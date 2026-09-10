.class Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$1;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 938
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 939
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "wall_id"

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity;->access$3(Lcom/vkontakte/android/PostViewActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/NewsComment;

    iget v1, v1, Lcom/vkontakte/android/NewsComment;->uid:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 940
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter$1;->this$1:Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;->access$1(Lcom/vkontakte/android/PostViewActivity$PostCommentsAdapter;)Lcom/vkontakte/android/PostViewActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/PostViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 941
    return-void
.end method
