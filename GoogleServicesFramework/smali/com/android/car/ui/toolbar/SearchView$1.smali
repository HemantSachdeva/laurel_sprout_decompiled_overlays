.class Lcom/android/car/ui/toolbar/SearchView$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/toolbar/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/ui/toolbar/SearchView;


# direct methods
.method constructor <init>(Lcom/android/car/ui/toolbar/SearchView;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/car/ui/toolbar/SearchView$1;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/car/ui/toolbar/SearchView$1;->this$0:Lcom/android/car/ui/toolbar/SearchView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/car/ui/toolbar/SearchView;->access$000(Lcom/android/car/ui/toolbar/SearchView;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
