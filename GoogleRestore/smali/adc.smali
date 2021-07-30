.class public final enum Ladc;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final enum a:Ladc;

.field public static final enum b:Ladc;

.field public static final enum c:Ladc;

.field private static final synthetic g:[Ladc;


# instance fields
.field public final d:Lasq;

.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Ladc;

    .line 1
    sget-object v3, Lasq;->b:Lasq;

    const-string v1, "PIN"

    const/4 v2, 0x0

    const v4, 0x7f110106

    const v5, 0x7f1101c0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ladc;-><init>(Ljava/lang/String;ILasq;II)V

    sput-object v6, Ladc;->a:Ladc;

    new-instance v0, Ladc;

    sget-object v10, Lasq;->c:Lasq;

    .line 2
    const-string v8, "PASSWORD"

    const/4 v9, 0x1

    const v11, 0x7f110104

    const v12, 0x7f1101be

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Ladc;-><init>(Ljava/lang/String;ILasq;II)V

    sput-object v0, Ladc;->b:Ladc;

    new-instance v1, Ladc;

    sget-object v16, Lasq;->d:Lasq;

    .line 3
    const-string v14, "PATTERN"

    const/4 v15, 0x2

    const v17, 0x7f110105

    const v18, 0x7f1101bf

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Ladc;-><init>(Ljava/lang/String;ILasq;II)V

    sput-object v1, Ladc;->c:Ladc;

    const/4 v2, 0x3

    new-array v2, v2, [Ladc;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v2, Ladc;->g:[Ladc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILasq;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ladc;->d:Lasq;

    iput p4, p0, Ladc;->e:I

    iput p5, p0, Ladc;->f:I

    return-void
.end method

.method static a(I)Ladc;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 5
    sget-object p0, Ladc;->c:Ladc;

    return-object p0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    .line 5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid LockScreenType value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, Ladc;->b:Ladc;

    return-object p0

    :cond_2
    sget-object p0, Ladc;->a:Ladc;

    return-object p0
.end method

.method public static values()[Ladc;
    .locals 1

    sget-object v0, Ladc;->g:[Ladc;

    .line 6
    invoke-virtual {v0}, [Ladc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ladc;

    return-object v0
.end method
