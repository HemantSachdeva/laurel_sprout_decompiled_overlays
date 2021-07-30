.class public final synthetic Lcom/android/car/ui/toolbar/-$$Lambda$TabLayout$TabAdapter$0Vjm7Veshp6Oh0zTkPnpEz-k18k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;

.field public final synthetic f$1:Lcom/android/car/ui/toolbar/TabLayout$Tab;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;Lcom/android/car/ui/toolbar/TabLayout$Tab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/-$$Lambda$TabLayout$TabAdapter$0Vjm7Veshp6Oh0zTkPnpEz-k18k;->f$0:Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;

    iput-object p2, p0, Lcom/android/car/ui/toolbar/-$$Lambda$TabLayout$TabAdapter$0Vjm7Veshp6Oh0zTkPnpEz-k18k;->f$1:Lcom/android/car/ui/toolbar/TabLayout$Tab;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/-$$Lambda$TabLayout$TabAdapter$0Vjm7Veshp6Oh0zTkPnpEz-k18k;->f$0:Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;

    iget-object p0, p0, Lcom/android/car/ui/toolbar/-$$Lambda$TabLayout$TabAdapter$0Vjm7Veshp6Oh0zTkPnpEz-k18k;->f$1:Lcom/android/car/ui/toolbar/TabLayout$Tab;

    invoke-virtual {v0, p0, p1}, Lcom/android/car/ui/toolbar/TabLayout$TabAdapter;->lambda$presentTabItemView$0$TabLayout$TabAdapter(Lcom/android/car/ui/toolbar/TabLayout$Tab;Landroid/view/View;)V

    return-void
.end method
