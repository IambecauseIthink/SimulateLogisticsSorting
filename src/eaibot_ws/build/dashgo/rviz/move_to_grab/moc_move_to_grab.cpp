/****************************************************************************
** Meta object code from reading C++ file 'move_to_grab.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/dashgo/rviz/move_to_grab/src/move_to_grab.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'move_to_grab.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_move_to_grab__MoveToGrab_t {
    QByteArrayData data[18];
    char stringdata0[322];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_move_to_grab__MoveToGrab_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_move_to_grab__MoveToGrab_t qt_meta_stringdata_move_to_grab__MoveToGrab = {
    {
QT_MOC_LITERAL(0, 0, 24), // "move_to_grab::MoveToGrab"
QT_MOC_LITERAL(1, 25, 16), // "recordRobotPose1"
QT_MOC_LITERAL(2, 42, 0), // ""
QT_MOC_LITERAL(3, 43, 12), // "publishGoal1"
QT_MOC_LITERAL(4, 56, 16), // "recordRobotPose2"
QT_MOC_LITERAL(5, 73, 12), // "publishGoal2"
QT_MOC_LITERAL(6, 86, 20), // "GetRobotPoseCallback"
QT_MOC_LITERAL(7, 107, 29), // "geometry_msgs::Pose::ConstPtr"
QT_MOC_LITERAL(8, 137, 3), // "msg"
QT_MOC_LITERAL(9, 141, 27), // "GetNavigationStatusCallback"
QT_MOC_LITERAL(10, 169, 46), // "move_base_msgs::MoveBaseActio..."
QT_MOC_LITERAL(11, 216, 12), // "getPose1Data"
QT_MOC_LITERAL(12, 229, 28), // "move_to_grab::MoveToGrabMsg&"
QT_MOC_LITERAL(13, 258, 9), // "pose1_msg"
QT_MOC_LITERAL(14, 268, 12), // "getPose2Data"
QT_MOC_LITERAL(15, 281, 9), // "pose2_msg"
QT_MOC_LITERAL(16, 291, 14), // "loopMoveToGrab"
QT_MOC_LITERAL(17, 306, 15) // "pauseMoveToGrab"

    },
    "move_to_grab::MoveToGrab\0recordRobotPose1\0"
    "\0publishGoal1\0recordRobotPose2\0"
    "publishGoal2\0GetRobotPoseCallback\0"
    "geometry_msgs::Pose::ConstPtr\0msg\0"
    "GetNavigationStatusCallback\0"
    "move_base_msgs::MoveBaseActionResult::ConstPtr\0"
    "getPose1Data\0move_to_grab::MoveToGrabMsg&\0"
    "pose1_msg\0getPose2Data\0pose2_msg\0"
    "loopMoveToGrab\0pauseMoveToGrab"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_move_to_grab__MoveToGrab[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   64,    2, 0x0a /* Public */,
       3,    0,   65,    2, 0x0a /* Public */,
       4,    0,   66,    2, 0x0a /* Public */,
       5,    0,   67,    2, 0x0a /* Public */,
       6,    1,   68,    2, 0x0a /* Public */,
       9,    1,   71,    2, 0x0a /* Public */,
      11,    1,   74,    2, 0x0a /* Public */,
      14,    1,   77,    2, 0x0a /* Public */,
      16,    0,   80,    2, 0x0a /* Public */,
      17,    0,   81,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 7,    8,
    QMetaType::Void, 0x80000000 | 10,    8,
    QMetaType::Void, 0x80000000 | 12,   13,
    QMetaType::Void, 0x80000000 | 12,   15,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void move_to_grab::MoveToGrab::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        MoveToGrab *_t = static_cast<MoveToGrab *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->recordRobotPose1(); break;
        case 1: _t->publishGoal1(); break;
        case 2: _t->recordRobotPose2(); break;
        case 3: _t->publishGoal2(); break;
        case 4: _t->GetRobotPoseCallback((*reinterpret_cast< const geometry_msgs::Pose::ConstPtr(*)>(_a[1]))); break;
        case 5: _t->GetNavigationStatusCallback((*reinterpret_cast< const move_base_msgs::MoveBaseActionResult::ConstPtr(*)>(_a[1]))); break;
        case 6: _t->getPose1Data((*reinterpret_cast< move_to_grab::MoveToGrabMsg(*)>(_a[1]))); break;
        case 7: _t->getPose2Data((*reinterpret_cast< move_to_grab::MoveToGrabMsg(*)>(_a[1]))); break;
        case 8: _t->loopMoveToGrab(); break;
        case 9: _t->pauseMoveToGrab(); break;
        default: ;
        }
    }
}

const QMetaObject move_to_grab::MoveToGrab::staticMetaObject = {
    { &rviz::Panel::staticMetaObject, qt_meta_stringdata_move_to_grab__MoveToGrab.data,
      qt_meta_data_move_to_grab__MoveToGrab,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *move_to_grab::MoveToGrab::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *move_to_grab::MoveToGrab::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_move_to_grab__MoveToGrab.stringdata0))
        return static_cast<void*>(const_cast< MoveToGrab*>(this));
    return rviz::Panel::qt_metacast(_clname);
}

int move_to_grab::MoveToGrab::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Panel::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 10)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 10;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 10)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 10;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
