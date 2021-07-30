.class public final synthetic Lbmm;
.super Ljava/lang/Object;

# interfaces
.implements Lbgs;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbmm;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbmm;->a:Ljava/lang/String;

    check-cast p1, Lbmq;

    new-instance v1, Lbmo;

    check-cast p2, Lbpl;

    invoke-direct {v1, p2}, Lbmo;-><init>(Lbpl;)V

    invoke-virtual {p1}, Lbhl;->s()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lbmp;

    invoke-virtual {p1, v1, v0}, Lbmp;->a(Lbmo;Ljava/lang/String;)V

    return-void
.end method
