.class Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$13;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->updateThumbnail(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

.field private final synthetic val$updater:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$13;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$13;->val$updater:Ljava/lang/Runnable;

    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$13;->this$0:Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity$13;->val$updater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/mediapicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 697
    return-void
.end method
