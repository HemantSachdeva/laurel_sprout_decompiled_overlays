.class final synthetic Lahs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lahu;


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lahs;->a:Lahu;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lahs;->a:Lahu;

    iget-object v0, p1, Lahu;->ac:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Laht;

    invoke-direct {v1, p1}, Laht;-><init>(Lahu;)V

    invoke-static {v0, v1}, Lj$/util/Collection$$Dispatch;->forEach(Ljava/util/Collection;Lj$/util/function/Consumer;)V

    invoke-virtual {p1}, Laki;->O()V

    return-void
.end method
