.class Lcom/vkontakte/android/PhotoViewerActivity$22;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->showTags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$22;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 698
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$22;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoViewerActivity;->access$19(Lcom/vkontakte/android/PhotoViewerActivity;)[Lcom/vkontakte/android/PhotoTag;

    move-result-object v2

    aget-object v2, v2, p2

    iget v1, v2, Lcom/vkontakte/android/PhotoTag;->userID:I

    .line 699
    .local v1, "uid":I
    if-lez v1, :cond_0

    .line 700
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$22;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    const-class v3, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 701
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 702
    iget-object v2, p0, Lcom/vkontakte/android/PhotoViewerActivity$22;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v2, v0}, Lcom/vkontakte/android/PhotoViewerActivity;->startActivity(Landroid/content/Intent;)V

    .line 704
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
