.class public final Lber;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lber;


# instance fields
.field public final b:Landroid/os/Looper;

.field public final c:Lbuo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbeq;

    invoke-direct {v0}, Lbeq;-><init>()V

    .line 1
    invoke-virtual {v0}, Lbeq;->a()Lber;

    move-result-object v0

    sput-object v0, Lber;->a:Lber;

    return-void
.end method

.method public constructor <init>(Lbuo;Landroid/os/Looper;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lber;->c:Lbuo;

    iput-object p2, p0, Lber;->b:Landroid/os/Looper;

    return-void
.end method
