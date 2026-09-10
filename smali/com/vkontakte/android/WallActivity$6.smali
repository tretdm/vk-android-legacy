.class Lcom/vkontakte/android/WallActivity$6;
.super Ljava/lang/Object;
.source "WallActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/PhotosGetAll$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallActivity;->onOpenPhoto(ILjava/util/ArrayList;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallActivity;

.field private final synthetic val$id:I

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallActivity;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallActivity$6;->this$0:Lcom/vkontakte/android/WallActivity;

    iput p2, p0, Lcom/vkontakte/android/WallActivity$6;->val$id:I

    iput-object p3, p0, Lcom/vkontakte/android/WallActivity$6;->val$view:Landroid/view/View;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$6;->this$0:Lcom/vkontakte/android/WallActivity;

    const v1, 0x7f090058

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 301
    return-void
.end method

.method public success(ILjava/util/Vector;)V
    .locals 3
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
    .line 295
    .local p2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$6;->this$0:Lcom/vkontakte/android/WallActivity;

    iget v1, p0, Lcom/vkontakte/android/WallActivity$6;->val$id:I

    iget-object v2, p0, Lcom/vkontakte/android/WallActivity$6;->val$view:Landroid/view/View;

    invoke-static {v0, v1, p2, p1, v2}, Lcom/vkontakte/android/WallActivity;->access$5(Lcom/vkontakte/android/WallActivity;ILjava/util/Vector;ILandroid/view/View;)V

    .line 296
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$6;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WallActivity;->access$3(Lcom/vkontakte/android/WallActivity;)Lcom/vkontakte/android/ProfilePhotosView;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/vkontakte/android/ProfilePhotosView;->setAllPhotosList(Ljava/util/List;I)V

    .line 297
    return-void
.end method
