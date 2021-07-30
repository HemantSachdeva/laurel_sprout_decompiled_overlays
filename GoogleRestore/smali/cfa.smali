.class final Lcfa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcfe;


# direct methods
.method public constructor <init>(Lcfe;)V
    .locals 0

    iput-object p1, p0, Lcfa;->a:Lcfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcfa;->a:Lcfe;

    iget-object p1, p1, Lcfe;->Z:Ljava/util/LinkedHashSet;

    .line 1
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcff;

    iget-object v1, p0, Lcfa;->a:Lcfe;

    iget-object v1, v1, Lcfe;->ab:Lcek;

    .line 2
    invoke-interface {v1}, Lcek;->a()Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Lcff;->a()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcfa;->a:Lcfe;

    .line 4
    invoke-virtual {p1}, Lav;->d()V

    return-void
.end method
