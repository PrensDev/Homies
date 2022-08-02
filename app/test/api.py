# Import Packages
from typing import List
from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from database import get_db
from hashing import Hash

# Import Models
from models import *

from app.test import schemas

# Router Instance
router = APIRouter(prefix = "/api", tags = ["Test API"])


# Get Internal Users
@router.get("/internal-users", response_model = List[schemas.ShowInternalUserAndRoles])
def get_user_info(db: Session = Depends(get_db)):
    try:
        return db.query(InternalUser).all()
    except Exception as e:
        print(e)



# =========================================================================
# DEPARTMENTS
# =========================================================================


# Department not found response
DEPARTMENT_NOT_FOUND_RESPONSE = {"message": "Department Not Found"}


# Create Department
@router.post("/departments", status_code = 201)
def create_department(req: schemas.CreateDepartment, db: Session = Depends(get_db)):
    try:
        new_department = Department(**req.dict())
        db.add(new_department)
        db.commit()
        db.refresh(new_department)
        return {
            "data": new_department,
            "msg": "A new department has been added"
        }
    except Exception as e:
        print(e)
        return {
            "error": True,
        }


# Create Many Department
@router.post("/departments/create-many", status_code = 201)
def create_many_departments(req: List[schemas.CreateDepartment], db: Session = Depends(get_db)):
    try:
        for department in req:
            new_department = Department(**department.dict())
            db.add(new_department)
            db.commit()
        return {
            "msg": "Departments has been added"
        }
    except Exception as e:
        print(e)
        return {
            "error": True,
            "details": e
        }


# Get all departments
@router.get("/departments", response_model = List[schemas.ShowDepartment])
def get_all_departments(db: Session = Depends(get_db)):
    try:
        return db.query(Department).all()
    except Exception as e:
        print(e)


# Get one departments
@router.get("/departments/{department_id}", response_model = schemas.ShowDepartment)
def get_one_departments(department_id, db: Session = Depends(get_db)):
    try:
        department = db.query(Department).filter(Department.department_id == department_id).first()
        if not department:
            raise HTTPException(status_code = 404, detail = DEPARTMENT_NOT_FOUND_RESPONSE)
        else:
            return department
    except Exception as e:
        print(e)


# Get sub departments per department
@router.get("/departments/{department_id}/sub-departments", response_model = schemas.ShowDepartment)
def get_sub_departments_per_department(department_id, db: Session = Depends(get_db)):
    try:
        sub_departments = db.query(SubDepartment).join(Department).filter(
            Department.department_id == department_id
        ).all()

        if not sub_departments:
            raise HTTPException(status_code = 404, detail = DEPARTMENT_NOT_FOUND_RESPONSE)
        else:
            return sub_departments
    except Exception as e:
        print(e)


# =========================================================================
# SUB DEPARTMENTS
# =========================================================================


# Sub Department Not Found Response
SUB_DEPARTMENT_NOT_FOUND_RESPONSE = {"message": "Sub-department Not Found"}


# Create Sub Department
@router.post("/sub-departments", status_code = 201)
def create_sub_department(req: schemas.CreateSubDepartment, db: Session = Depends(get_db)):
    try:
        new_sub_department = SubDepartment(**req.dict())
        db.add(new_sub_department)
        db.commit()
        db.refresh(new_sub_department)
        return {
            "data": new_sub_department,
            "msg": "A new sub-department has been added"
        }
    except Exception as e:
        print(e)


# Create Many Sub Department
@router.post("/sub-departments/create-many", status_code = 201)
def create_many_sub_departments(req: List[schemas.CreateSubDepartment], db: Session = Depends(get_db)):
    try:
        for sub_department in req:
            new_sub_department = SubDepartment(**sub_department.dict())
            db.add(new_sub_department)
            db.commit()
        return {
            "msg": " Sub-departments has been added"
        }
    except Exception as e:
        print(e)
        return {
            "error": True,
            "details": e
        }


# Get All Sub Department
@router.get("/sub-departments", response_model = List[schemas.ShowSubDepartment])
def get_all_sub_departments(db: Session = Depends(get_db)):
    try:
        return db.query(SubDepartment).all()
    except Exception as e:
        print(e)


# Get One Sub Department
@router.get("/sub-departments/{sub_department_id}", response_model = schemas.ShowSubDepartment)
def get_all_sub_departments(sub_department_id: str, db: Session = Depends(get_db)):
    try:
        sub_department = db.query(SubDepartment).filter(
            SubDepartment.sub_department_id == sub_department_id
        ).first()

        if not sub_department:
            raise HTTPException(status_code = 404, detail = SUB_DEPARTMENT_NOT_FOUND_RESPONSE)
        else:
            return sub_department
    except Exception as e:
        print(e)


# =========================================================================
# POSITION
# =========================================================================


# Create Position Per Sub-Department
@router.post("/positions")
def create_position(req: schemas.CreatePosition, db: Session = Depends(get_db)):
    try:
        new_position = Position(**req.dict())
        db.add(new_position)
        db.commit()
        db.refresh(new_position)
        return {
            "data": new_position,
            "msg": "A new position has been added"
        }
    except Exception as e:
        print(e)
        return {
            "error": True,
            "details": e
        }


# Create Many Positions Per Sub-Department
@router.post("/positions/create-many")
def create_many_positions(req: List[schemas.CreatePosition], db: Session = Depends(get_db)):
    try:
        for position in req:
            new_position = Position(**position.dict())
            db.add(new_position)
            db.commit()
        return {
            "msg": "Positions has been added"
        }
    except Exception as e:
        print(e)
        return {
            "error": True,
            "details": e
        }


# Get All Positions
@router.get("/positions", response_model = List[schemas.ShowPosition])
def get_all_positions(db: Session = Depends(get_db)):
    try:
        return db.query(Position).all()
    except Exception as e:
        print(e)


# =========================================================================
# EMPLOYEES
# =========================================================================

# Get All Employees
@router.get("/employees", response_model = List[schemas.ShowEmployee])
def get_all_employees(db: Session = Depends(get_db)):
    return db.query(Employee).all()

# Create Employees
@router.post("/employees")
def create_position(req: schemas.CreateEmployee, db: Session = Depends(get_db)):
    new_employee = Employee(**req.dict())
    db.add(new_employee)
    db.commit()
    db.refresh(new_employee)
    return {
        "data": new_employee,
        "msg": "A new employee has been added"
    } 


# =========================================================================
# EMPLOYMENT TYPE
# =========================================================================

@router.post("/employment-types")
def create_employment_type(req: schemas.CreateEmploymentType, db: Session = Depends(get_db)):
    try:
        new_employment_type = EmploymentType(**req.dict())
        db.add(new_employment_type)
        db.commit()
        db.refresh(new_employment_type)
        return {"data": new_employment_type, "msg": "A new employment type has been added"}
    except Exception as e:
        print(e)


@router.post("/employment-types/create-many")
def create_many_employment_types(req: List[schemas.CreateEmploymentType], db: Session = Depends(get_db)):
    try:
        for employment_type in req:
            new_employment_type = EmploymentType(**employment_type.dict())
            db.add(new_employment_type)
            db.commit()
        return {
            "msg": "Employment types has been added"
        }
    except Exception as e:
        print(e)


@router.get("/employment-types")
def get_employment_types(db: Session = Depends(get_db)):
    try:
        return db.query(EmploymentType).all()
    except Exception as e:
        print(e)


# =========================================================================
# INTERNAL USERS
# =========================================================================


# Create Internal User
@router.post("/internal-users")
def get_user_info(req: schemas.InternalUser, db: Session = Depends(get_db)):
    try:
        req.password = Hash.encrypt(req.password)
        new_internal_user = InternalUser(**req.dict())
        db.add(new_internal_user)
        db.commit()
        db.refresh(new_internal_user)
        return {
            "data": new_internal_user,
            "msg": "A new internal user has been added"
        }
    except Exception as e:
        print(e)


# Create Many Internal User
@router.post("/internal-users/create-many")
def create_many_users(req: List[schemas.InternalUser], db: Session = Depends(get_db)):
    try:
        for user in req:
            user.password = Hash.encrypt(user.password)
            new_internal_user = InternalUser(**user.dict())
            db.add(new_internal_user)
            db.commit()
        return {
            "msg": "Internal users has been added"
        }
    except Exception as e:
        print(e)


# Get All Internal Users
@router.get("/internal-users")
def get_all_users(db: Session = Depends(get_db)):
    try:
        return db.query(InternalUser).all()
    except Exception as e:
        print(e)


# =========================================================================
# ROLES
# =========================================================================


# Create Role
@router.post("/roles")
def create_role(req: schemas.Role, db: Session = Depends(get_db)):
    try:
        new_role = Role(**req.dict())
        db.add(new_role)
        db.commit()
        db.refresh(new_role)
        return {
            "data": new_role,
            "msg": "A new role has been added"
        }
    except Exception as e:
        print(e)


# Create Many Roles
@router.post("/roles/create-many")
def create_many_roles(req: List[schemas.Role], db: Session = Depends(get_db)):
    try:
        for role in req:
            new_role = Role(**role.dict())
            db.add(new_role)
            db.commit()
        return {
            "msg": "Roles has been added"
        }
    except Exception as e:
        print(e)


# Get All Roles
@router.get("/roles")
def get_all_role(db: Session = Depends(get_db)):
    try:
        return db.query(Role).all()
    except Exception as e:
        print(e)


# =========================================================================
# USER ROLE
# =========================================================================


# Create UserRole
@router.post("/user-roles")
def create_user_role(req: schemas.UserRole, db: Session = Depends(get_db)):
    try:
        new_user_role = UserRole(**req.dict())
        db.add(new_user_role)
        db.commit()
        db.refresh(new_user_role)
        return {
            "data": new_user_role,
            "msg": "A new role has been added"
        }
    except Exception as e:
        print(e)


# Create Many UserRole
@router.post("/user-roles/create-many")
def create_many_user_role(req: List[schemas.UserRole], db: Session = Depends(get_db)):
    try:
        for user_role in req:
            new_user_role = UserRole(**user_role.dict())
            db.add(new_user_role)
            db.commit()
        return {
            "msg": "New roles has been added"
        }
    except Exception as e:
        print(e)


# Get User Roles
@router.get("/user-roles", response_model=List[schemas.ShowUserRole])
def get_user_roles(db: Session = Depends(get_db)):
    return db.query(UserRole).all()