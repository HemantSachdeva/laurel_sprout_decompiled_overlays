.class final synthetic Lbzy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/StrictMode$OnVmViolationListener;


# static fields
.field static final a:Landroid/os/StrictMode$OnVmViolationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbzy;

    invoke-direct {v0}, Lbzy;-><init>()V

    sput-object v0, Lbzy;->a:Landroid/os/StrictMode$OnVmViolationListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVmViolation(Landroid/os/strictmode/Violation;)V
    .locals 0

    return-void
.end method
