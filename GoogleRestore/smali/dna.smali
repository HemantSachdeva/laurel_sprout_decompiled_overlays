.class public final enum Ldna;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ldna;

.field public static final enum b:Ldna;

.field public static final enum c:Ldna;

.field public static final enum d:Ldna;

.field public static final enum e:Ldna;

.field public static final enum f:Ldna;

.field public static final enum g:Ldna;

.field public static final enum h:Ldna;

.field public static final enum i:Ldna;

.field private static final synthetic j:[Ldna;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ldna;

    .line 1
    const-string v1, "INT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldna;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldna;->a:Ldna;

    new-instance v1, Ldna;

    .line 2
    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldna;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldna;->b:Ldna;

    new-instance v3, Ldna;

    .line 3
    const-string v5, "FLOAT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldna;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldna;->c:Ldna;

    new-instance v5, Ldna;

    .line 4
    const-string v7, "DOUBLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ldna;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ldna;->d:Ldna;

    new-instance v7, Ldna;

    .line 5
    const-string v9, "BOOLEAN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ldna;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ldna;->e:Ldna;

    new-instance v9, Ldna;

    .line 6
    const-string v11, "STRING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ldna;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ldna;->f:Ldna;

    new-instance v11, Ldna;

    .line 7
    sget-object v13, Ldib;->b:Ldib;

    const-string v13, "BYTE_STRING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ldna;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ldna;->g:Ldna;

    new-instance v13, Ldna;

    .line 8
    const-string v15, "ENUM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ldna;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ldna;->h:Ldna;

    new-instance v15, Ldna;

    .line 9
    const-string v14, "MESSAGE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ldna;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ldna;->i:Ldna;

    const/16 v14, 0x9

    new-array v14, v14, [Ldna;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Ldna;->j:[Ldna;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldna;
    .locals 1

    sget-object v0, Ldna;->j:[Ldna;

    .line 11
    invoke-virtual {v0}, [Ldna;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldna;

    return-object v0
.end method
