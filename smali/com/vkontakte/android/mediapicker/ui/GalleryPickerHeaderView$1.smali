.class Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$1;
.super Ljava/lang/Object;
.source "GalleryPickerHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->access$000(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;->access$000(Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView;)Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/mediapicker/ui/GalleryPickerHeaderView$Callback;->onBackPressed()V

    .line 164
    :cond_0
    return-void
.end method
