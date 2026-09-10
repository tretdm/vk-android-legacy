.class Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$12;
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

.field private final synthetic val$getter:Ljava/lang/Runnable;

.field private final synthetic val$unlock:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$12;->this$0:Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils;

    iput-object p2, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$12;->val$getter:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$12;->val$unlock:Ljava/lang/Runnable;

    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$12;->val$getter:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1067
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/utils/ImagePickerUtils$12;->val$unlock:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1068
    return-void
.end method
