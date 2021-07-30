.class Lcom/android/car/ui/toolbar/ToolbarControllerImpl$1;
.super Ljava/lang/Object;
.source "ToolbarControllerImpl.java"

# interfaces
.implements Lcom/android/car/ui/toolbar/TabLayout$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/ui/toolbar/ToolbarControllerImpl;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/car/ui/toolbar/ToolbarControllerImpl;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl$1;->this$0:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelected(Lcom/android/car/ui/toolbar/TabLayout$Tab;)V
    .locals 1

    .line 173
    iget-object p0, p0, Lcom/android/car/ui/toolbar/ToolbarControllerImpl$1;->this$0:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    invoke-static {p0}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->access$000(Lcom/android/car/ui/toolbar/ToolbarControllerImpl;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/ui/toolbar/Toolbar$OnTabSelectedListener;

    .line 174
    invoke-interface {v0, p1}, Lcom/android/car/ui/toolbar/Toolbar$OnTabSelectedListener;->onTabSelected(Lcom/android/car/ui/toolbar/TabLayout$Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method
