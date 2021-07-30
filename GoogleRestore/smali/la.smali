.class final Lla;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Llb;


# direct methods
.method public constructor <init>(Llb;)V
    .locals 0

    iput-object p1, p0, Lla;->a:Llb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lla;->a:Llb;

    .line 1
    invoke-virtual {v0}, Llb;->d()V

    return-void
.end method
