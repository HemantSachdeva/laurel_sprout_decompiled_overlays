.class final Lcjo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/AutoCompleteTextView;

.field final synthetic b:Lcjq;


# direct methods
.method public constructor <init>(Lcjq;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    iput-object p1, p0, Lcjo;->b:Lcjq;

    iput-object p2, p0, Lcjo;->a:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcjo;->a:Landroid/widget/AutoCompleteTextView;

    .line 1
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iget-object v1, p0, Lcjo;->b:Lcjq;

    iget-object v1, v1, Lcjq;->a:Lcjz;

    .line 2
    invoke-virtual {v1, v0}, Lcjz;->b(Z)V

    iget-object v1, p0, Lcjo;->b:Lcjq;

    iget-object v1, v1, Lcjq;->a:Lcjz;

    iput-boolean v0, v1, Lcjz;->d:Z

    return-void
.end method
