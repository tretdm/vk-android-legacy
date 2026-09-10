.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$8;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->initialize(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 482
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$1400(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 484
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$8;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/utils/CameraUtils;->launchCamera(Landroid/app/Activity;)V

    .line 485
    return-void
.end method
