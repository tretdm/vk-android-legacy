.class Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$12;
.super Ljava/lang/Object;
.source "GalleryPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->updateThumbnail(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

.field private final synthetic val$updater:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$12;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$12;->val$updater:Ljava/lang/Runnable;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$12;->this$0:Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity$12;->val$updater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/imagepicker/GalleryPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 599
    return-void
.end method
