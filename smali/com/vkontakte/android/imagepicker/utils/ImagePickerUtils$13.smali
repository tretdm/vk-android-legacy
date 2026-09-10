.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$13;
.super Ljava/lang/Object;
.source "ImagePickerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;->getImage(Lcom/vkontakte/android/imagepicker/entries/ImageEntry;ZLcom/vkontakte/android/imagepicker/utils/ActionCallback;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

.field private final synthetic val$threadName:Ljava/lang/String;

.field private final synthetic val$unlock_executed:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;[ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$13;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$13;->val$unlock_executed:[Z

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$13;->val$threadName:Ljava/lang/String;

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1078
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$13;->val$unlock_executed:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1084
    :cond_0
    const-string v0, "!!!WARNING!!! IMAGE GETTER IS STILL RUNNING IN 10 SECONDS ON %s THREAD"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$13;->val$threadName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
