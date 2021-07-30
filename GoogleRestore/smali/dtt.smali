.class final synthetic Ldtt;
.super Ljava/lang/Object;

# interfaces
.implements Lccs;


# static fields
.field static final a:Lccs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldtt;

    invoke-direct {v0}, Ldtt;-><init>()V

    sput-object v0, Ldtt;->a:Lccs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ldpf;->b:Ldpf;

    invoke-static {v0, p1}, Ldkd;->a(Ldkd;[B)Ldkd;

    move-result-object p1

    check-cast p1, Ldpf;

    return-object p1
.end method
