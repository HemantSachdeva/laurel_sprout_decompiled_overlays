.class public final Lcgm;
.super Lfl;
.source "PG"


# instance fields
.field final synthetic b:Lcom/google/android/material/internal/NavigationMenuItemView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V
    .locals 0

    iput-object p1, p0, Lcgm;->b:Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 1
    invoke-direct {p0}, Lfl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lgz;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lfl;->a(Landroid/view/View;Lgz;)V

    iget-object p1, p0, Lcgm;->b:Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 3
    iget-boolean p1, p1, Lcom/google/android/material/internal/NavigationMenuItemView;->c:Z

    invoke-virtual {p2, p1}, Lgz;->a(Z)V

    return-void
.end method
