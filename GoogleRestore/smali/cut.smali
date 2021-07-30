.class public final enum Lcut;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lcut;

.field public static final enum b:Lcut;

.field public static final enum c:Lcut;

.field public static final enum d:Lcut;

.field public static final enum e:Lcut;

.field public static final enum f:Lcut;

.field public static final enum g:Lcut;

.field public static final enum h:Lcut;

.field public static final enum i:Lcut;

.field public static final enum j:Lcut;

.field public static final k:[Lcut;

.field private static final synthetic p:[Lcut;


# instance fields
.field public final l:C

.field public final m:Lcuv;

.field public final n:I

.field public final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    new-instance v7, Lcut;

    .line 1
    sget-object v4, Lcuv;->a:Lcuv;

    const-string v1, "STRING"

    const/4 v2, 0x0

    const/16 v3, 0x73

    const-string v5, "-#"

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcut;-><init>(Ljava/lang/String;ICLcuv;Ljava/lang/String;Z)V

    sput-object v7, Lcut;->a:Lcut;

    new-instance v0, Lcut;

    sget-object v12, Lcuv;->b:Lcuv;

    .line 2
    const-string v9, "BOOLEAN"

    const/4 v10, 0x1

    const/16 v11, 0x62

    const-string v13, "-"

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcut;-><init>(Ljava/lang/String;ICLcuv;Ljava/lang/String;Z)V

    sput-object v0, Lcut;->b:Lcut;

    new-instance v1, Lcut;

    sget-object v19, Lcuv;->c:Lcuv;

    .line 3
    const-string v16, "CHAR"

    const/16 v17, 0x2

    const/16 v18, 0x63

    const-string v20, "-"

    const/16 v21, 0x1

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcut;-><init>(Ljava/lang/String;ICLcuv;Ljava/lang/String;Z)V

    sput-object v1, Lcut;->c:Lcut;

    new-instance v2, Lcut;

    sget-object v12, Lcuv;->d:Lcuv;

    .line 4
    const-string v9, "DECIMAL"

    const/4 v10, 0x3

    const/16 v11, 0x64

    const-string v13, "-0+ ,("

    const/4 v14, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcut;-><init>(Ljava/lang/String;ICLcuv;Ljava/lang/String;Z)V

    sput-object v2, Lcut;->d:Lcut;

    new-instance v3, Lcut;

    sget-object v19, Lcuv;->d:Lcuv;

    .line 5
    const-string v16, "OCTAL"

    const/16 v17, 0x4

    const/16 v18, 0x6f

    const-string v20, "-#0("

    const/16 v21, 0x0

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcut;-><init>(Ljava/lang/String;ICLcuv;Ljava/lang/String;Z)V

    sput-object v3, Lcut;->e:Lcut;

    new-instance v4, Lcut;

    sget-object v12, Lcuv;->d:Lcuv;

    .line 6
    const-string v9, "HEX"

    const/4 v10, 0x5

    const/16 v11, 0x78

    const-string v13, "-#0("

    const/4 v14, 0x1

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcut;-><init>(Ljava/lang/String;ICLcuv;Ljava/lang/String;Z)V

    sput-object v4, Lcut;->f:Lcut;

    new-instance v5, Lcut;

    sget-object v19, Lcuv;->e:Lcuv;

    .line 7
    const-string v16, "FLOAT"

    const/16 v17, 0x6

    const/16 v18, 0x66

    const-string v20, "-#0+ ,("

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcut;-><init>(Ljava/lang/String;ICLcuv;Ljava/lang/String;Z)V

    sput-object v5, Lcut;->g:Lcut;

    new-instance v6, Lcut;

    sget-object v12, Lcuv;->e:Lcuv;

    .line 8
    const-string v9, "EXPONENT"

    const/4 v10, 0x7

    const/16 v11, 0x65

    const-string v13, "-#0+ ("

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcut;-><init>(Ljava/lang/String;ICLcuv;Ljava/lang/String;Z)V

    sput-object v6, Lcut;->h:Lcut;

    new-instance v8, Lcut;

    sget-object v19, Lcuv;->e:Lcuv;

    .line 9
    const-string v16, "GENERAL"

    const/16 v17, 0x8

    const/16 v18, 0x67

    const-string v20, "-0+ ,("

    const/16 v21, 0x1

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcut;-><init>(Ljava/lang/String;ICLcuv;Ljava/lang/String;Z)V

    sput-object v8, Lcut;->i:Lcut;

    new-instance v16, Lcut;

    sget-object v13, Lcuv;->e:Lcuv;

    .line 10
    const-string v10, "EXPONENT_HEX"

    const/16 v11, 0x9

    const/16 v12, 0x61

    const-string v14, "-#0+ "

    const/4 v15, 0x1

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcut;-><init>(Ljava/lang/String;ICLcuv;Ljava/lang/String;Z)V

    sput-object v16, Lcut;->j:Lcut;

    const/16 v9, 0xa

    new-array v9, v9, [Lcut;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v0, v9, v7

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const/4 v0, 0x3

    aput-object v2, v9, v0

    const/4 v0, 0x4

    aput-object v3, v9, v0

    const/4 v0, 0x5

    aput-object v4, v9, v0

    const/4 v0, 0x6

    aput-object v5, v9, v0

    const/4 v0, 0x7

    aput-object v6, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    const/16 v0, 0x9

    aput-object v16, v9, v0

    sput-object v9, Lcut;->p:[Lcut;

    const/16 v0, 0x1a

    new-array v0, v0, [Lcut;

    sput-object v0, Lcut;->k:[Lcut;

    .line 11
    invoke-static {}, Lcut;->values()[Lcut;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v10, v1, :cond_0

    aget-object v2, v0, v10

    sget-object v3, Lcut;->k:[Lcut;

    iget-char v4, v2, Lcut;->l:C

    invoke-static {v4}, Lcut;->a(C)I

    move-result v4

    .line 12
    aput-object v2, v3, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ICLcuv;Ljava/lang/String;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Lcut;->l:C

    iput-object p4, p0, Lcut;->m:Lcuv;

    .line 14
    invoke-static {p5, p6}, Lcuu;->a(Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcut;->n:I

    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcut;->o:Ljava/lang/String;

    return-void
.end method

.method public static a(C)I
    .locals 0

    or-int/lit8 p0, p0, 0x20

    add-int/lit8 p0, p0, -0x61

    return p0
.end method

.method public static b(C)Z
    .locals 0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static values()[Lcut;
    .locals 1

    sget-object v0, Lcut;->p:[Lcut;

    .line 16
    invoke-virtual {v0}, [Lcut;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcut;

    return-object v0
.end method
