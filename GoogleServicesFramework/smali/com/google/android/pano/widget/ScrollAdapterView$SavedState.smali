.class final Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "ScrollAdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/widget/ScrollAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3158
    new-instance v0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 3172
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 3142
    new-instance v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    invoke-direct {v0}, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    .line 3173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->itemsOnOffAxis:I

    .line 3174
    iget-object v0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->index:I

    .line 3175
    const-class v0, Lcom/google/android/pano/widget/ScrollAdapterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3176
    iget-object v1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandedChildStates:Landroid/os/Bundle;

    .line 3177
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandableChildStates:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 3145
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3142
    new-instance p1, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    invoke-direct {p1}, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;-><init>()V

    iput-object p1, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 3150
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3151
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget p2, p2, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->itemsOnOffAxis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3152
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget p2, p2, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3153
    iget-object p2, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget-object p2, p2, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandedChildStates:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3154
    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$SavedState;->theState:Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;

    iget-object p0, p0, Lcom/google/android/pano/widget/ScrollAdapterView$AdapterViewState;->expandableChildStates:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
