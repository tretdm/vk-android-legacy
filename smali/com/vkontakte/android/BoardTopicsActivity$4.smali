.class Lcom/vkontakte/android/BoardTopicsActivity$4;
.super Ljava/lang/Object;
.source "BoardTopicsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BoardTopicsActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BoardTopicsActivity;

.field private final synthetic val$topic:Lcom/vkontakte/android/api/BoardTopic;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BoardTopicsActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iput-object p2, p0, Lcom/vkontakte/android/BoardTopicsActivity$4;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 226
    packed-switch p2, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity$4;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-static {v0, v1}, Lcom/vkontakte/android/BoardTopicsActivity;->access$3(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity$4;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-static {v0, v1}, Lcom/vkontakte/android/BoardTopicsActivity;->access$4(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V

    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v0, p0, Lcom/vkontakte/android/BoardTopicsActivity$4;->this$0:Lcom/vkontakte/android/BoardTopicsActivity;

    iget-object v1, p0, Lcom/vkontakte/android/BoardTopicsActivity$4;->val$topic:Lcom/vkontakte/android/api/BoardTopic;

    invoke-static {v0, v1}, Lcom/vkontakte/android/BoardTopicsActivity;->access$5(Lcom/vkontakte/android/BoardTopicsActivity;Lcom/vkontakte/android/api/BoardTopic;)V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
