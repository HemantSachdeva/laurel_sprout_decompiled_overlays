.class public final enum Ldko;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Ldko;

.field public static final enum b:Ldko;

.field public static final enum c:Ldko;

.field public static final enum d:Ldko;

.field public static final enum e:Ldko;

.field public static final enum f:Ldko;

.field public static final enum g:Ldko;

.field public static final enum h:Ldko;

.field public static final enum i:Ldko;

.field public static final enum j:Ldko;

.field private static final synthetic k:[Ldko;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Ldko;

    .line 1
    const-string v1, "VOID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ldko;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldko;->a:Ldko;

    new-instance v1, Ldko;

    .line 2
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "INT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ldko;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ldko;->b:Ldko;

    new-instance v3, Ldko;

    .line 3
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v5, "LONG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ldko;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ldko;->c:Ldko;

    new-instance v5, Ldko;

    .line 4
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v7, "FLOAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ldko;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ldko;->d:Ldko;

    new-instance v7, Ldko;

    .line 5
    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v9, "DOUBLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Ldko;-><init>(Ljava/lang/String;I)V

    sput-object v7, Ldko;->e:Ldko;

    new-instance v9, Ldko;

    .line 6
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v11, "BOOLEAN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Ldko;-><init>(Ljava/lang/String;I)V

    sput-object v9, Ldko;->f:Ldko;

    new-instance v11, Ldko;

    .line 7
    const-string v13, "STRING"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Ldko;-><init>(Ljava/lang/String;I)V

    sput-object v11, Ldko;->g:Ldko;

    new-instance v13, Ldko;

    .line 8
    sget-object v15, Ldib;->b:Ldib;

    const-string v15, "BYTE_STRING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Ldko;-><init>(Ljava/lang/String;I)V

    sput-object v13, Ldko;->h:Ldko;

    new-instance v15, Ldko;

    .line 9
    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v14, "ENUM"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Ldko;-><init>(Ljava/lang/String;I)V

    sput-object v15, Ldko;->i:Ldko;

    new-instance v14, Ldko;

    .line 10
    const-string v12, "MESSAGE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Ldko;-><init>(Ljava/lang/String;I)V

    sput-object v14, Ldko;->j:Ldko;

    const/16 v12, 0xa

    new-array v12, v12, [Ldko;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Ldko;->k:[Ldko;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Ldko;
    .locals 1

    sget-object v0, Ldko;->k:[Ldko;

    .line 12
    invoke-virtual {v0}, [Ldko;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldko;

    return-object v0
.end method
