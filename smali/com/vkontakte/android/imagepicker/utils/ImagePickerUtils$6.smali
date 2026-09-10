.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$6;
.super Ljava/lang/Object;
.source "ImagePickerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->invokeGetAlbums(Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;Landroid/content/ContentResolver;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

.field private final synthetic val$activity:Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;

.field private final synthetic val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

.field private final synthetic val$cameraBucketCallback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

.field private final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;Landroid/content/ContentResolver;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$6;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$6;->val$activity:Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$6;->val$resolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$6;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    iput-object p5, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$6;->val$cameraBucketCallback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 432
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$6;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$6;->val$activity:Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$6;->val$resolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$6;->val$callback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$6;->val$cameraBucketCallback:Lcom/vkontakte/android/imagepicker/utils/ActionCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->access$7(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Lcom/vkontakte/android/imagepicker/utils/ActivityClassProvider;Landroid/content/ContentResolver;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;Lcom/vkontakte/android/imagepicker/utils/ActionCallback;)V

    .line 433
    return-void
.end method
