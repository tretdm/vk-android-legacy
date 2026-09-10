.class Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$2;
.super Ljava/lang/Object;
.source "GalleryPickerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->invokeGetAlbums(Landroid/content/ContentResolver;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

.field private final synthetic val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

.field private final synthetic val$cameraBucketCallback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

.field private final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;Landroid/content/ContentResolver;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$2;->this$0:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$2;->val$resolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$2;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    iput-object p4, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$2;->val$cameraBucketCallback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$2;->this$0:Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$2;->val$resolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$2;->val$callback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    iget-object v3, p0, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils$2;->val$cameraBucketCallback:Lcom/vkontakte/android/mediapicker/entries/ActionCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;->access$0(Lcom/vkontakte/android/mediapicker/utils/GalleryPickerUtils;Landroid/content/ContentResolver;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;Lcom/vkontakte/android/mediapicker/entries/ActionCallback;)V

    .line 176
    return-void
.end method
