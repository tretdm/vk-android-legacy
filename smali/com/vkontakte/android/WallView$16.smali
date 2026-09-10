.class Lcom/vkontakte/android/WallView$16;
.super Ljava/lang/Object;
.source "WallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/WallView;->fillData([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ[Lcom/vkontakte/android/Photo;[ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallView;

.field private final synthetic val$name:[Ljava/lang/String;

.field private final synthetic val$photo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallView;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallView$16;->this$0:Lcom/vkontakte/android/WallView;

    iput-object p2, p0, Lcom/vkontakte/android/WallView$16;->val$name:[Ljava/lang/String;

    iput-object p3, p0, Lcom/vkontakte/android/WallView$16;->val$photo:Ljava/lang/String;

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 796
    invoke-static {p1}, Lcom/vkontakte/android/Global;->setViewSel(Landroid/view/View;)V

    .line 797
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/WallView$16;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkontakte/android/ChatActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 798
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "peerID"

    iget-object v2, p0, Lcom/vkontakte/android/WallView$16;->this$0:Lcom/vkontakte/android/WallView;

    invoke-static {v2}, Lcom/vkontakte/android/WallView;->access$0(Lcom/vkontakte/android/WallView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 799
    const-string v1, "title"

    iget-object v2, p0, Lcom/vkontakte/android/WallView$16;->val$name:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string v1, "photo"

    iget-object v2, p0, Lcom/vkontakte/android/WallView$16;->val$photo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    iget-object v1, p0, Lcom/vkontakte/android/WallView$16;->this$0:Lcom/vkontakte/android/WallView;

    invoke-virtual {v1}, Lcom/vkontakte/android/WallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 802
    return-void
.end method
