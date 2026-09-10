.class Lcom/vkontakte/android/NewPostActivity$12$1$1;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity$12$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/NewPostActivity$12$1;

.field private final synthetic val$att:Lcom/vkontakte/android/GeoAttachment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity$12$1;Lcom/vkontakte/android/GeoAttachment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$12$1$1;->this$2:Lcom/vkontakte/android/NewPostActivity$12$1;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$12$1$1;->val$att:Lcom/vkontakte/android/GeoAttachment;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$12$1$1;->this$2:Lcom/vkontakte/android/NewPostActivity$12$1;

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity$12$1;->access$0(Lcom/vkontakte/android/NewPostActivity$12$1;)Lcom/vkontakte/android/NewPostActivity$12;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity$12;->access$0(Lcom/vkontakte/android/NewPostActivity$12;)Lcom/vkontakte/android/NewPostActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/NewPostActivity;->access$3(Lcom/vkontakte/android/NewPostActivity;)Lcom/vkontakte/android/ui/LocationAttachView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$12$1$1;->val$att:Lcom/vkontakte/android/GeoAttachment;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/LocationAttachView;->setData(Lcom/vkontakte/android/GeoAttachment;)V

    .line 394
    return-void
.end method
