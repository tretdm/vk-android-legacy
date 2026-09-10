.class Lcom/vkontakte/android/WallActivity$6;
.super Ljava/lang/Object;
.source "WallActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGetAll$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallActivity;->onOpenPhoto(I[Lcom/vkontakte/android/Photo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallActivity;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallActivity$6;->this$0:Lcom/vkontakte/android/WallActivity;

    iput p2, p0, Lcom/vkontakte/android/WallActivity$6;->val$id:I

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$6;->this$0:Lcom/vkontakte/android/WallActivity;

    const v1, 0x7f090057

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 2
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Vector",
            "<",
            "Lcom/vkontakte/android/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$6;->this$0:Lcom/vkontakte/android/WallActivity;

    iget v1, p0, Lcom/vkontakte/android/WallActivity$6;->val$id:I

    invoke-static {v0, v1, p2, p1}, Lcom/vkontakte/android/WallActivity;->access$5(Lcom/vkontakte/android/WallActivity;ILjava/util/Vector;I)V

    .line 280
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$6;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WallActivity;->access$3(Lcom/vkontakte/android/WallActivity;)Lcom/vkontakte/android/ProfilePhotosView;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/vkontakte/android/ProfilePhotosView;->setAllPhotosList(Ljava/util/Vector;I)V

    .line 281
    return-void
.end method
