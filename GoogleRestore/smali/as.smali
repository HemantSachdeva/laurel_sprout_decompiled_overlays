.class final Las;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lav;


# direct methods
.method public constructor <init>(Lav;)V
    .locals 0

    iput-object p1, p0, Las;->a:Lav;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Las;->a:Lav;

    iget-object v0, p1, Lav;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Lav;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
