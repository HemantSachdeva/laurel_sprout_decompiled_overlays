.class public final synthetic Ldct;
.super Ljava/lang/Object;

# interfaces
.implements Ldbl;


# static fields
.field public static final a:Ldbl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldct;

    invoke-direct {v0}, Ldct;-><init>()V

    sput-object v0, Ldct;->a:Ldbl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldbk;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/firebase/crash/FirebaseCrash;

    const-class v1, Ldbb;

    invoke-interface {p1, v1}, Ldbk;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldbb;

    const-class v2, Lddf;

    invoke-interface {p1, v2}, Ldbk;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lddf;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/crash/FirebaseCrash;-><init>(Ldbb;Lddf;)V

    return-object v0
.end method
