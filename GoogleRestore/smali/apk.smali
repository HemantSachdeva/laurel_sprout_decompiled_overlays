.class public final enum Lapk;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lapk;

.field public static final enum b:Lapk;

.field public static final enum c:Lapk;

.field public static final enum d:Lapk;

.field public static final enum e:Lapk;

.field private static final synthetic f:[Lapk;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lapk;

    .line 1
    const-string v1, "BACKUP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lapk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lapk;->a:Lapk;

    new-instance v1, Lapk;

    .line 2
    const-string v3, "RESTORE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lapk;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lapk;->b:Lapk;

    new-instance v3, Lapk;

    .line 3
    const-string v5, "LIST_DEVICES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lapk;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lapk;->c:Lapk;

    new-instance v5, Lapk;

    .line 4
    const-string v7, "CLEAR_DEVICE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lapk;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lapk;->d:Lapk;

    new-instance v7, Lapk;

    .line 5
    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lapk;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lapk;->e:Lapk;

    const/4 v9, 0x5

    new-array v9, v9, [Lapk;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lapk;->f:[Lapk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Latq;)Lapk;
    .locals 4

    iget v0, p0, Latq;->a:I

    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_5

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_4

    iget-object p0, p0, Latq;->e:Ldkk;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Late;

    iget v3, v2, Late;->a:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_2

    iget-object v3, v2, Late;->b:Ldkk;

    .line 8
    invoke-interface {v3}, Ldkk;->size()I

    move-result v3

    if-gtz v3, :cond_1

    iget-object v3, v2, Late;->d:Ldkk;

    .line 9
    invoke-interface {v3}, Ldkk;->size()I

    move-result v3

    if-gtz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v2, Late;->c:Ldkk;

    .line 10
    invoke-interface {v2}, Ldkk;->size()I

    move-result v2

    if-lez v2, :cond_0

    :cond_1
    sget-object p0, Lapk;->a:Lapk;

    return-object p0

    :cond_2
    sget-object p0, Lapk;->b:Lapk;

    return-object p0

    :cond_3
    sget-object p0, Lapk;->e:Lapk;

    return-object p0

    :cond_4
    sget-object p0, Lapk;->d:Lapk;

    return-object p0

    :cond_5
    sget-object p0, Lapk;->c:Lapk;

    return-object p0
.end method

.method public static values()[Lapk;
    .locals 1

    sget-object v0, Lapk;->f:[Lapk;

    .line 11
    invoke-virtual {v0}, [Lapk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lapk;

    return-object v0
.end method
