.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$32;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->showCheck(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$hide:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$32;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-boolean p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$32;->val$hide:Z

    .line 1792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1797
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$32;->val$hide:Z

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$32;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$33(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1799
    :cond_0
    return-void
.end method
