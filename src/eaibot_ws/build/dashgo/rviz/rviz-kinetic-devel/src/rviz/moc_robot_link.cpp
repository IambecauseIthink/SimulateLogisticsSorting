/****************************************************************************
** Meta object code from reading C++ file 'robot_link.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../../../src/dashgo/rviz/rviz-kinetic-devel/src/rviz/robot/robot_link.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'robot_link.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_rviz__RobotLink_t {
    QByteArrayData data[6];
    char stringdata0[69];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_rviz__RobotLink_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_rviz__RobotLink_t qt_meta_stringdata_rviz__RobotLink = {
    {
QT_MOC_LITERAL(0, 0, 15), // "rviz::RobotLink"
QT_MOC_LITERAL(1, 16, 16), // "updateVisibility"
QT_MOC_LITERAL(2, 33, 0), // ""
QT_MOC_LITERAL(3, 34, 11), // "updateAlpha"
QT_MOC_LITERAL(4, 46, 11), // "updateTrail"
QT_MOC_LITERAL(5, 58, 10) // "updateAxes"

    },
    "rviz::RobotLink\0updateVisibility\0\0"
    "updateAlpha\0updateTrail\0updateAxes"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_rviz__RobotLink[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   34,    2, 0x0a /* Public */,
       3,    0,   35,    2, 0x08 /* Private */,
       4,    0,   36,    2, 0x08 /* Private */,
       5,    0,   37,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void rviz::RobotLink::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        RobotLink *_t = static_cast<RobotLink *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateVisibility(); break;
        case 1: _t->updateAlpha(); break;
        case 2: _t->updateTrail(); break;
        case 3: _t->updateAxes(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject rviz::RobotLink::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_rviz__RobotLink.data,
      qt_meta_data_rviz__RobotLink,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *rviz::RobotLink::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *rviz::RobotLink::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_rviz__RobotLink.stringdata0))
        return static_cast<void*>(const_cast< RobotLink*>(this));
    return QObject::qt_metacast(_clname);
}

int rviz::RobotLink::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}
QT_END_MOC_NAMESPACE