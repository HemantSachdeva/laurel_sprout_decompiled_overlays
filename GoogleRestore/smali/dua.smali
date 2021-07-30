.class public final Ldua;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldtz;


# static fields
.field public static final a:Lccv;

.field public static final b:Lccv;

.field public static final c:Lccv;

.field public static final d:Lccv;

.field public static final e:Lccv;

.field public static final f:Lccv;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcct;

    .line 1
    const-string v1, "com.google.android.apps.pixelmigrate"

    invoke-static {v1}, Lcck;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcct;-><init>(Landroid/net/Uri;)V

    .line 2
    const-string v1, "PrimesFeature__primes_enable_battery_metric"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Ldua;->a:Lccv;

    .line 3
    const-string v1, "PrimesFeature__primes_enable_crash_metric"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Ldua;->b:Lccv;

    .line 4
    const-string v1, "PrimesFeature__primes_enable_memory_metric"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Ldua;->c:Lccv;

    .line 5
    const-string v1, "PrimesFeature__primes_enable_network_metric"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Ldua;->d:Lccv;

    .line 6
    const-string v1, "PrimesFeature__primes_enable_package_metric"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v1

    sput-object v1, Ldua;->e:Lccv;

    .line 7
    const-string v1, "PrimesFeature__primes_enable_timer_metric"

    invoke-virtual {v0, v1, v2}, Lcct;->b(Ljava/lang/String;Z)Lccv;

    move-result-object v0

    sput-object v0, Ldua;->f:Lccv;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Ldua;->a:Lccv;

    .line 8
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Ldua;->b:Lccv;

    .line 9
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Ldua;->c:Lccv;

    .line 10
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Ldua;->d:Lccv;

    .line 11
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    sget-object v0, Ldua;->e:Lccv;

    .line 12
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    sget-object v0, Ldua;->f:Lccv;

    .line 13
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
