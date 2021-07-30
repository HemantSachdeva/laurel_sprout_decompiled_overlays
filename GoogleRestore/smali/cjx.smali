.class final Lcjx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# instance fields
.field final synthetic a:Lcjz;


# direct methods
.method public constructor <init>(Lcjz;)V
    .locals 0

    iput-object p1, p0, Lcjx;->a:Lcjz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 3

    iget-object v0, p0, Lcjx;->a:Lcjz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcjz;->d:Z

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcjz;->f:J

    iget-object v0, p0, Lcjx;->a:Lcjz;

    .line 2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcjz;->b(Z)V

    return-void
.end method
