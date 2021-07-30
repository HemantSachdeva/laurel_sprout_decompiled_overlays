.class public final Lbnw;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lbej;

.field public static final b:Lbej;

.field public static final c:Lbqb;

.field static final d:Lbqb;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v3, Lbej;

    invoke-direct {v3}, Lbej;-><init>()V

    sput-object v3, Lbnw;->a:Lbej;

    new-instance v7, Lbej;

    invoke-direct {v7}, Lbej;-><init>()V

    sput-object v7, Lbnw;->b:Lbej;

    new-instance v2, Lbnt;

    invoke-direct {v2}, Lbnt;-><init>()V

    sput-object v2, Lbnw;->c:Lbqb;

    new-instance v6, Lbnu;

    invoke-direct {v6}, Lbnu;-><init>()V

    sput-object v6, Lbnw;->d:Lbqb;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    .line 1
    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    .line 2
    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lbeo;

    .line 3
    const-string v1, "SignIn.API"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lbeo;-><init>(Ljava/lang/String;Lbqb;Lbej;[B[B)V

    new-instance v4, Lbeo;

    .line 4
    const-string v5, "SignIn.INTERNAL_API"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lbeo;-><init>(Ljava/lang/String;Lbqb;Lbej;[B[B)V

    return-void
.end method
