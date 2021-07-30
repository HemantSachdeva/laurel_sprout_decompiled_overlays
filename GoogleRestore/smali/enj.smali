.class public final enum Lenj;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lenj;

.field public static final enum b:Lenj;

.field public static final enum c:Lenj;

.field public static final enum d:Lenj;

.field public static final enum e:Lenj;

.field public static final enum f:Lenj;

.field public static final enum g:Lenj;

.field public static final enum h:Lenj;

.field public static final enum i:Lenj;

.field public static final enum j:Lenj;

.field public static final enum k:Lenj;

.field public static final enum l:Lenj;

.field public static final enum m:Lenj;

.field public static final enum n:Lenj;

.field public static final enum o:Lenj;

.field public static final enum p:Lenj;

.field public static final enum q:Lenj;

.field private static final synthetic s:[Lenj;


# instance fields
.field private final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lenj;

    .line 1
    const-string v1, "ROOT_TAG_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lenj;->a:Lenj;

    new-instance v1, Lenj;

    .line 2
    const-string v3, "UNKNOWN"

    const/4 v4, 0x1

    const/16 v5, 0xff

    invoke-direct {v1, v3, v4, v5}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lenj;->b:Lenj;

    new-instance v3, Lenj;

    .line 3
    const-string v5, "JNI_GLOBAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lenj;->c:Lenj;

    new-instance v5, Lenj;

    .line 4
    const-string v7, "JNI_LOCAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lenj;->d:Lenj;

    new-instance v7, Lenj;

    .line 5
    const-string v9, "JAVA_LOCAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lenj;->e:Lenj;

    new-instance v9, Lenj;

    .line 6
    const-string v11, "NATIVE_STACK"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lenj;->f:Lenj;

    new-instance v11, Lenj;

    .line 7
    const-string v13, "STICKY_CLASS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lenj;->g:Lenj;

    new-instance v13, Lenj;

    .line 8
    const-string v15, "THREAD_BLOCK"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lenj;->h:Lenj;

    new-instance v15, Lenj;

    .line 9
    const-string v14, "MONITOR_USED"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lenj;->i:Lenj;

    new-instance v14, Lenj;

    .line 10
    const-string v12, "THREAD_OBJECT"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lenj;->j:Lenj;

    new-instance v12, Lenj;

    .line 11
    const-string v8, "INTERNED_STRING"

    const/16 v10, 0xa

    const/16 v6, 0x89

    invoke-direct {v12, v8, v10, v6}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lenj;->k:Lenj;

    new-instance v6, Lenj;

    .line 12
    const-string v8, "FINALIZING"

    const/16 v10, 0xb

    const/16 v4, 0x8a

    invoke-direct {v6, v8, v10, v4}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lenj;->l:Lenj;

    new-instance v4, Lenj;

    .line 13
    const-string v8, "DEBUGGER"

    const/16 v10, 0xc

    const/16 v2, 0x8b

    invoke-direct {v4, v8, v10, v2}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lenj;->m:Lenj;

    new-instance v2, Lenj;

    .line 14
    const-string v8, "REFERENCE_CLEANUP"

    const/16 v10, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x8c

    invoke-direct {v2, v8, v10, v4}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lenj;->n:Lenj;

    new-instance v4, Lenj;

    .line 15
    const-string v8, "VM_INTERNAL"

    const/16 v10, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x8d

    invoke-direct {v4, v8, v10, v2}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lenj;->o:Lenj;

    new-instance v2, Lenj;

    .line 16
    const-string v8, "JNI_MONITOR"

    const/16 v10, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x8e

    invoke-direct {v2, v8, v10, v4}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lenj;->p:Lenj;

    new-instance v4, Lenj;

    .line 17
    const-string v8, "UNREACHABLE"

    const/16 v10, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x90

    invoke-direct {v4, v8, v10, v2}, Lenj;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lenj;->q:Lenj;

    const/16 v2, 0x11

    new-array v2, v2, [Lenj;

    const/4 v8, 0x0

    aput-object v0, v2, v8

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

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    aput-object v4, v2, v10

    sput-object v2, Lenj;->s:[Lenj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lenj;->r:I

    return-void
.end method

.method public static a(I)Lenj;
    .locals 1

    const/16 v0, 0x90

    if-eq p0, v0, :cond_1

    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lenj;->p:Lenj;

    return-object p0

    :pswitch_1
    sget-object p0, Lenj;->o:Lenj;

    return-object p0

    :pswitch_2
    sget-object p0, Lenj;->n:Lenj;

    return-object p0

    :pswitch_3
    sget-object p0, Lenj;->m:Lenj;

    return-object p0

    :pswitch_4
    sget-object p0, Lenj;->l:Lenj;

    return-object p0

    :pswitch_5
    sget-object p0, Lenj;->k:Lenj;

    return-object p0

    :pswitch_6
    sget-object p0, Lenj;->j:Lenj;

    return-object p0

    :pswitch_7
    sget-object p0, Lenj;->i:Lenj;

    return-object p0

    :pswitch_8
    sget-object p0, Lenj;->h:Lenj;

    return-object p0

    :pswitch_9
    sget-object p0, Lenj;->g:Lenj;

    return-object p0

    :pswitch_a
    sget-object p0, Lenj;->f:Lenj;

    return-object p0

    :pswitch_b
    sget-object p0, Lenj;->e:Lenj;

    return-object p0

    :pswitch_c
    sget-object p0, Lenj;->d:Lenj;

    return-object p0

    :pswitch_d
    sget-object p0, Lenj;->c:Lenj;

    return-object p0

    :pswitch_e
    sget-object p0, Lenj;->a:Lenj;

    return-object p0

    :cond_0
    sget-object p0, Lenj;->b:Lenj;

    return-object p0

    :cond_1
    sget-object p0, Lenj;->q:Lenj;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Leni;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lenj;
    .locals 1

    sget-object v0, Lenj;->s:[Lenj;

    .line 26
    invoke-virtual {v0}, [Lenj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lenj;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lenj;->r:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lenj;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p0}, Lenj;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
