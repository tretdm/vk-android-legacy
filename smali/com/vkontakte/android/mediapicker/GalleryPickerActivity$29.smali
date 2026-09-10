.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$29;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateCurrentRect(Z)Z
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
    .line 1501
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$29;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$29;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-boolean v0, v0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->isGoingBackToGrid:Z

    if-eqz v0, :cond_0

    .line 1506
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$29;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->access$500(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;)V

    .line 1507
    :cond_0
    return-void
.end method
