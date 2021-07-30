.class public final enum Lavh;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum A:Lavh;

.field public static final enum B:Lavh;

.field public static final enum C:Lavh;

.field public static final enum D:Lavh;

.field public static final enum E:Lavh;

.field public static final enum F:Lavh;

.field public static final enum G:Lavh;

.field public static final enum H:Lavh;

.field public static final enum I:Lavh;

.field public static final enum J:Lavh;

.field public static final enum K:Lavh;

.field public static final enum L:Lavh;

.field public static final enum M:Lavh;

.field public static final enum N:Lavh;

.field public static final enum O:Lavh;

.field public static final enum P:Lavh;

.field public static final enum Q:Lavh;

.field private static final synthetic S:[Lavh;

.field public static final enum a:Lavh;

.field public static final enum b:Lavh;

.field public static final enum c:Lavh;

.field public static final enum d:Lavh;

.field public static final enum e:Lavh;

.field public static final enum f:Lavh;

.field public static final enum g:Lavh;

.field public static final enum h:Lavh;

.field public static final enum i:Lavh;

.field public static final enum j:Lavh;

.field public static final enum k:Lavh;

.field public static final enum l:Lavh;

.field public static final enum m:Lavh;

.field public static final enum n:Lavh;

.field public static final enum o:Lavh;

.field public static final enum p:Lavh;

.field public static final enum q:Lavh;

.field public static final enum r:Lavh;

.field public static final enum s:Lavh;

.field public static final enum t:Lavh;

.field public static final enum u:Lavh;

.field public static final enum v:Lavh;

.field public static final enum w:Lavh;

.field public static final enum x:Lavh;

.field public static final enum y:Lavh;

.field public static final enum z:Lavh;


# instance fields
.field public final R:I


# direct methods
.method static constructor <clinit>()V
    .locals 46

    new-instance v0, Lavh;

    .line 1
    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lavh;->a:Lavh;

    new-instance v1, Lavh;

    .line 2
    const-string v3, "GET_DEVICES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lavh;->b:Lavh;

    new-instance v3, Lavh;

    .line 3
    const-string v5, "COMMON_RESTORE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lavh;->c:Lavh;

    new-instance v5, Lavh;

    .line 4
    const-string v7, "FULL_DATA_BACKUP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lavh;->d:Lavh;

    new-instance v7, Lavh;

    .line 5
    const-string v9, "FULL_DATA_RESTORE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lavh;->e:Lavh;

    new-instance v9, Lavh;

    .line 6
    const-string v11, "BACKUP_UI"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lavh;->f:Lavh;

    new-instance v11, Lavh;

    .line 7
    const-string v13, "BACKUP_START"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lavh;->g:Lavh;

    new-instance v13, Lavh;

    .line 8
    const-string v15, "BACKUP_END"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lavh;->h:Lavh;

    new-instance v15, Lavh;

    .line 9
    const-string v14, "BACKUP_ERROR"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lavh;->i:Lavh;

    new-instance v14, Lavh;

    .line 10
    const-string v12, "REQUEST_ERROR"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lavh;->j:Lavh;

    new-instance v12, Lavh;

    .line 11
    const-string v10, "RESTORE_START"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lavh;->k:Lavh;

    new-instance v10, Lavh;

    .line 12
    const-string v8, "NEXT_RESTORE_PACKAGE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lavh;->l:Lavh;

    new-instance v8, Lavh;

    .line 13
    const-string v6, "RESTORE_END"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lavh;->m:Lavh;

    new-instance v6, Lavh;

    .line 14
    const-string v4, "RESTORE_INFO"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lavh;->n:Lavh;

    new-instance v4, Lavh;

    .line 15
    const-string v2, "RESTORE_ERROR"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lavh;->o:Lavh;

    new-instance v2, Lavh;

    .line 16
    const-string v6, "DEVICE_STATE_SNAPSHOT"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lavh;->p:Lavh;

    new-instance v6, Lavh;

    .line 17
    const-string v4, "INELIGIBILITY"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lavh;->q:Lavh;

    new-instance v4, Lavh;

    .line 18
    const-string v2, "CLOUD_RESTORE_START"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lavh;->r:Lavh;

    new-instance v2, Lavh;

    .line 19
    const-string v6, "CLOUD_RESTORE_JOB_FINISHED"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lavh;->s:Lavh;

    new-instance v6, Lavh;

    .line 20
    const-string v4, "CLOUD_RESTORE_END"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lavh;->t:Lavh;

    new-instance v4, Lavh;

    .line 21
    const-string v2, "CONTACTS_REQUEST_START"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lavh;->u:Lavh;

    new-instance v2, Lavh;

    .line 22
    const-string v6, "CONTACTS_REQUEST_ERROR"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lavh;->v:Lavh;

    new-instance v6, Lavh;

    .line 23
    const-string v4, "FETCH_CONTACTS_BACKUP_END"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lavh;->w:Lavh;

    new-instance v2, Lavh;

    .line 24
    const-string v4, "RESTORE_DEVICE_AND_SIM_CONTACTS_END"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lavh;->x:Lavh;

    new-instance v4, Lavh;

    .line 25
    const-string v6, "MIGRATE_CLEANER_ERROR"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v8, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lavh;->y:Lavh;

    new-instance v2, Lavh;

    .line 26
    const-string v6, "CLOUD_RESTORE_ERROR"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v8, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lavh;->z:Lavh;

    new-instance v4, Lavh;

    .line 27
    const-string v6, "CLOUD_RESTORE_SKIP"

    const/16 v8, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1a

    invoke-direct {v4, v6, v8, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lavh;->A:Lavh;

    new-instance v2, Lavh;

    .line 28
    const-string v6, "FULL_BACKUP_SCHEDULED"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1b

    invoke-direct {v2, v6, v8, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lavh;->B:Lavh;

    new-instance v4, Lavh;

    .line 29
    const-string v6, "BACK_UP_NOW_START"

    const/16 v8, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-direct {v4, v6, v8, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lavh;->C:Lavh;

    new-instance v2, Lavh;

    .line 30
    const-string v6, "BACK_UP_NOW_END"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1d

    invoke-direct {v2, v6, v8, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lavh;->D:Lavh;

    new-instance v4, Lavh;

    .line 31
    const-string v6, "GMS_BACKUP_SCHEDULE"

    const/16 v8, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x1e

    invoke-direct {v4, v6, v8, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lavh;->E:Lavh;

    new-instance v2, Lavh;

    .line 32
    const-string v6, "GMS_BACKUP_RUN"

    const/16 v8, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x1f

    invoke-direct {v2, v6, v8, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lavh;->F:Lavh;

    new-instance v4, Lavh;

    .line 33
    const-string v6, "NO_BACKUP_NOTIFICATION"

    const/16 v8, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x20

    invoke-direct {v4, v6, v8, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lavh;->G:Lavh;

    new-instance v2, Lavh;

    .line 34
    const-string v6, "KEY_RECOVERY"

    const/16 v8, 0x21

    move-object/from16 v36, v4

    const/16 v4, 0x21

    invoke-direct {v2, v6, v8, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lavh;->H:Lavh;

    new-instance v4, Lavh;

    .line 35
    const-string v6, "APP_PICKER_HOST_START_APP_REQUEST"

    const/16 v8, 0x22

    move-object/from16 v37, v2

    const/16 v2, 0x22

    invoke-direct {v4, v6, v8, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lavh;->I:Lavh;

    new-instance v2, Lavh;

    .line 36
    const-string v6, "APP_PICKER_HOST_END"

    const/16 v8, 0x23

    move-object/from16 v38, v4

    const/16 v4, 0x23

    invoke-direct {v2, v6, v8, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lavh;->J:Lavh;

    new-instance v4, Lavh;

    .line 37
    const-string v6, "SUW_SCREEN_CHANGE"

    const/16 v8, 0x24

    move-object/from16 v39, v2

    const/16 v2, 0x24

    invoke-direct {v4, v6, v8, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lavh;->K:Lavh;

    new-instance v2, Lavh;

    .line 38
    const-string v6, "MMS_BACKUP_SCHEDULE"

    const/16 v8, 0x25

    move-object/from16 v40, v4

    const/16 v4, 0x25

    invoke-direct {v2, v6, v8, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lavh;->L:Lavh;

    new-instance v4, Lavh;

    .line 39
    const-string v6, "MMS_BACKUP_RUN"

    const/16 v8, 0x26

    move-object/from16 v41, v2

    const/16 v2, 0x26

    invoke-direct {v4, v6, v8, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lavh;->M:Lavh;

    new-instance v2, Lavh;

    .line 40
    const-string v6, "MMS_BACKUP"

    const/16 v8, 0x27

    move-object/from16 v42, v4

    const/16 v4, 0x27

    invoke-direct {v2, v6, v8, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lavh;->N:Lavh;

    new-instance v4, Lavh;

    .line 41
    const-string v6, "SET_BACKUP_ACCOUNT_SERVICE_INVOKED"

    const/16 v8, 0x28

    move-object/from16 v43, v2

    const/16 v2, 0x28

    invoke-direct {v4, v6, v8, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lavh;->O:Lavh;

    new-instance v2, Lavh;

    .line 42
    const-string v6, "MMS_RESTORE"

    const/16 v8, 0x29

    move-object/from16 v44, v4

    const/16 v4, 0x29

    invoke-direct {v2, v6, v8, v4}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lavh;->P:Lavh;

    new-instance v4, Lavh;

    .line 43
    const-string v6, "UNLOCK_IS_REQUIRED"

    const/16 v8, 0x2a

    move-object/from16 v45, v2

    const/16 v2, 0x2a

    invoke-direct {v4, v6, v8, v2}, Lavh;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lavh;->Q:Lavh;

    const/16 v2, 0x2b

    new-array v2, v2, [Lavh;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v25, v2, v0

    const/16 v0, 0xd

    aput-object v16, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    const/16 v0, 0x11

    aput-object v20, v2, v0

    const/16 v0, 0x12

    aput-object v21, v2, v0

    const/16 v0, 0x13

    aput-object v22, v2, v0

    const/16 v0, 0x14

    aput-object v23, v2, v0

    const/16 v0, 0x15

    aput-object v24, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v31, v2, v0

    const/16 v0, 0x1c

    aput-object v32, v2, v0

    const/16 v0, 0x1d

    aput-object v33, v2, v0

    const/16 v0, 0x1e

    aput-object v34, v2, v0

    const/16 v0, 0x1f

    aput-object v35, v2, v0

    const/16 v0, 0x20

    aput-object v36, v2, v0

    const/16 v0, 0x21

    aput-object v37, v2, v0

    const/16 v0, 0x22

    aput-object v38, v2, v0

    const/16 v0, 0x23

    aput-object v39, v2, v0

    const/16 v0, 0x24

    aput-object v40, v2, v0

    const/16 v0, 0x25

    aput-object v41, v2, v0

    const/16 v0, 0x26

    aput-object v42, v2, v0

    const/16 v0, 0x27

    aput-object v43, v2, v0

    const/16 v0, 0x28

    aput-object v44, v2, v0

    const/16 v0, 0x29

    aput-object v45, v2, v0

    const/16 v0, 0x2a

    aput-object v4, v2, v0

    sput-object v2, Lavh;->S:[Lavh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lavh;->R:I

    return-void
.end method

.method public static values()[Lavh;
    .locals 1

    sget-object v0, Lavh;->S:[Lavh;

    .line 52
    invoke-virtual {v0}, [Lavh;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lavh;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lavh;->R:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lavh;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Lavh;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
