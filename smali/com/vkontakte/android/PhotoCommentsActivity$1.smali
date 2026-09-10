.class Lcom/vkontakte/android/PhotoCommentsActivity$1;
.super Ljava/lang/Object;
.source "PhotoCommentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoCommentsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoCommentsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoCommentsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$1;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-static {p1}, Lcom/vkontakte/android/Global;->setViewSel(Landroid/view/View;)V

    .line 61
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$1;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wall_id"

    iget-object v2, p0, Lcom/vkontakte/android/PhotoCommentsActivity$1;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoCommentsActivity;->access$0(Lcom/vkontakte/android/PhotoCommentsActivity;)Lcom/vkontakte/android/Photo;

    move-result-object v2

    iget v2, v2, Lcom/vkontakte/android/Photo;->ownerID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$1;->this$0:Lcom/vkontakte/android/PhotoCommentsActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/PhotoCommentsActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
