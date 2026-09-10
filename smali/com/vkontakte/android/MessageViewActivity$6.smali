.class Lcom/vkontakte/android/MessageViewActivity$6;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MessageViewActivity;->addFwdMessages([Lcom/vkontakte/android/Message$FwdMessage;Landroid/view/ViewGroup;Lcom/vkontakte/android/ImageLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MessageViewActivity;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageViewActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageViewActivity$6;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    iput p2, p0, Lcom/vkontakte/android/MessageViewActivity$6;->val$uid:I

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 304
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$6;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    const-class v2, Lcom/vkontakte/android/WallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wall_id"

    iget v2, p0, Lcom/vkontakte/android/MessageViewActivity$6;->val$uid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$6;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/MessageViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 307
    return-void
.end method
