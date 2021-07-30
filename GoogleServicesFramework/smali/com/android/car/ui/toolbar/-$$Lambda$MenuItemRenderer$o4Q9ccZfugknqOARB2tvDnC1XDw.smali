.class public final synthetic Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$o4Q9ccZfugknqOARB2tvDnC1XDw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/car/ui/toolbar/MenuItem$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Method;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$o4Q9ccZfugknqOARB2tvDnC1XDw;->f$0:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$o4Q9ccZfugknqOARB2tvDnC1XDw;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/android/car/ui/toolbar/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$o4Q9ccZfugknqOARB2tvDnC1XDw;->f$0:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$o4Q9ccZfugknqOARB2tvDnC1XDw;->f$1:Landroid/app/Activity;

    invoke-static {v0, p0, p1}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->lambda$readMenuItem$2(Ljava/lang/reflect/Method;Landroid/app/Activity;Lcom/android/car/ui/toolbar/MenuItem;)V

    return-void
.end method
