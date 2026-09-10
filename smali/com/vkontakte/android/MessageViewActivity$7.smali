.class Lcom/vkontakte/android/MessageViewActivity$7;
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

.field private final synthetic val$_i:I

.field private final synthetic val$list:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageViewActivity;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageViewActivity$7;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    iput p2, p0, Lcom/vkontakte/android/MessageViewActivity$7;->val$_i:I

    iput p3, p0, Lcom/vkontakte/android/MessageViewActivity$7;->val$list:I

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/vkontakte/android/MessageViewActivity$7;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    iget v1, p0, Lcom/vkontakte/android/MessageViewActivity$7;->val$_i:I

    iget v2, p0, Lcom/vkontakte/android/MessageViewActivity$7;->val$list:I

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/MessageViewActivity;->access$1(Lcom/vkontakte/android/MessageViewActivity;II)V

    .line 344
    return-void
.end method
