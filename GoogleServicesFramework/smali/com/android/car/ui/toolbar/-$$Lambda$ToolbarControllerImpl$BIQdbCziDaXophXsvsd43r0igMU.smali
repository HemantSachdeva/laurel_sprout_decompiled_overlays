.class public final synthetic Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$BIQdbCziDaXophXsvsd43r0igMU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

.field public final synthetic f$1:Lcom/android/car/ui/toolbar/MenuItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/toolbar/ToolbarControllerImpl;Lcom/android/car/ui/toolbar/MenuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$BIQdbCziDaXophXsvsd43r0igMU;->f$0:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    iput-object p2, p0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$BIQdbCziDaXophXsvsd43r0igMU;->f$1:Lcom/android/car/ui/toolbar/MenuItem;

    return-void
.end method


# virtual methods
.method public final onClick(Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$BIQdbCziDaXophXsvsd43r0igMU;->f$0:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    iget-object p0, p0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$BIQdbCziDaXophXsvsd43r0igMU;->f$1:Lcom/android/car/ui/toolbar/MenuItem;

    invoke-virtual {v0, p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->lambda$toCarUiContentListItem$5$ToolbarControllerImpl(Lcom/android/car/ui/toolbar/MenuItem;Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V

    return-void
.end method
