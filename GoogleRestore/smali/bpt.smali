.class public final enum Lbpt;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ldkf;


# static fields
.field public static final enum a:Lbpt;

.field public static final enum b:Lbpt;

.field public static final enum c:Lbpt;

.field public static final enum d:Lbpt;

.field public static final enum e:Lbpt;

.field public static final enum f:Lbpt;

.field public static final enum g:Lbpt;

.field public static final enum h:Lbpt;

.field public static final enum i:Lbpt;

.field private static final synthetic k:[Lbpt;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lbpt;

    .line 1
    const-string v1, "ARCH_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lbpt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbpt;->a:Lbpt;

    new-instance v1, Lbpt;

    .line 2
    const-string v3, "ARCH_NON_NATIVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lbpt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lbpt;->b:Lbpt;

    new-instance v3, Lbpt;

    .line 3
    const-string v5, "ARCH_ARMV5"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lbpt;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lbpt;->c:Lbpt;

    new-instance v5, Lbpt;

    .line 4
    const-string v7, "ARCH_ARMV7"

    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-direct {v5, v7, v8, v9}, Lbpt;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lbpt;->d:Lbpt;

    new-instance v7, Lbpt;

    .line 5
    const-string v10, "ARCH_ARM64"

    const/4 v11, 0x5

    invoke-direct {v7, v10, v9, v11}, Lbpt;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lbpt;->e:Lbpt;

    new-instance v10, Lbpt;

    .line 6
    const-string v12, "ARCH_MIPS"

    const/4 v13, 0x6

    invoke-direct {v10, v12, v11, v13}, Lbpt;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lbpt;->f:Lbpt;

    new-instance v12, Lbpt;

    .line 7
    const-string v14, "ARCH_MIPS_64"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v13, v15}, Lbpt;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lbpt;->g:Lbpt;

    new-instance v14, Lbpt;

    .line 8
    const-string v13, "ARCH_X86"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v15, v11}, Lbpt;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lbpt;->h:Lbpt;

    new-instance v13, Lbpt;

    .line 9
    const-string v15, "ARCH_X86_64"

    const/16 v9, 0x9

    invoke-direct {v13, v15, v11, v9}, Lbpt;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lbpt;->i:Lbpt;

    new-array v9, v9, [Lbpt;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    const/4 v0, 0x4

    aput-object v7, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    const/4 v0, 0x7

    aput-object v14, v9, v0

    aput-object v13, v9, v11

    sput-object v9, Lbpt;->k:[Lbpt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbpt;->j:I

    return-void
.end method

.method public static a(I)Lbpt;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lbpt;->i:Lbpt;

    return-object p0

    :pswitch_2
    sget-object p0, Lbpt;->h:Lbpt;

    return-object p0

    :pswitch_3
    sget-object p0, Lbpt;->g:Lbpt;

    return-object p0

    :pswitch_4
    sget-object p0, Lbpt;->f:Lbpt;

    return-object p0

    :pswitch_5
    sget-object p0, Lbpt;->e:Lbpt;

    return-object p0

    :pswitch_6
    sget-object p0, Lbpt;->d:Lbpt;

    return-object p0

    :pswitch_7
    sget-object p0, Lbpt;->c:Lbpt;

    return-object p0

    :pswitch_8
    sget-object p0, Lbpt;->b:Lbpt;

    return-object p0

    :pswitch_9
    sget-object p0, Lbpt;->a:Lbpt;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b()Ldkh;
    .locals 1

    sget-object v0, Lbps;->a:Ldkh;

    return-object v0
.end method

.method public static values()[Lbpt;
    .locals 1

    sget-object v0, Lbpt;->k:[Lbpt;

    .line 18
    invoke-virtual {v0}, [Lbpt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbpt;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lbpt;->j:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbpt;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Lbpt;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
