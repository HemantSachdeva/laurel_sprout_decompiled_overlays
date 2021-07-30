.class final Laq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lav;


# direct methods
.method public constructor <init>(Lav;)V
    .locals 0

    iput-object p1, p0, Laq;->a:Lav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Laq;->a:Lav;

    iget-object v1, v0, Lav;->a:Landroid/content/DialogInterface$OnDismissListener;

    iget-object v0, v0, Lav;->c:Landroid/app/Dialog;

    .line 1
    invoke-interface {v1, v0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
