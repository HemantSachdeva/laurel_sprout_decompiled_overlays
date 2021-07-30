.class public final Ldwb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Ljava/util/logging/Logger;

.field public static final b:Ldwb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ldwb;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ldwb;->a:Ljava/util/logging/Logger;

    new-instance v0, Ldwb;

    invoke-direct {v0}, Ldwb;-><init>()V

    sput-object v0, Ldwb;->b:Ldwb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ldwb;
    .locals 1

    .line 5
    sget-object v0, Ldvz;->a:Ldwa;

    .line 6
    invoke-virtual {v0}, Ldwa;->a()Ldwb;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ldwb;->b:Ldwb;

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 4
    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ldwb;)V
    .locals 1

    .line 7
    const-string v0, "toAttach"

    invoke-static {p1, v0}, Ldwb;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    sget-object v0, Ldvz;->a:Ldwa;

    .line 9
    invoke-virtual {v0, p0, p1}, Ldwa;->a(Ldwb;Ldwb;)V

    return-void
.end method

.method public final b()Ldwb;
    .locals 1

    .line 2
    sget-object v0, Ldvz;->a:Ldwa;

    .line 3
    invoke-virtual {v0, p0}, Ldwa;->a(Ldwb;)Ldwb;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ldwb;->b:Ldwb;

    :cond_0
    return-object v0
.end method
