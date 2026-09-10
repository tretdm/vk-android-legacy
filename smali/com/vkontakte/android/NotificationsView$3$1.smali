.class Lcom/vkontakte/android/NotificationsView$3$1;
.super Ljava/lang/Object;
.source "NotificationsView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NotificationsView$3;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/NotificationsView$3;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NotificationsView$3;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NotificationsView$3$1;->this$1:Lcom/vkontakte/android/NotificationsView$3;

    iput p2, p0, Lcom/vkontakte/android/NotificationsView$3$1;->val$pos:I

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 185
    packed-switch p2, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 187
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$3$1;->this$1:Lcom/vkontakte/android/NotificationsView$3;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView$3;->access$0(Lcom/vkontakte/android/NotificationsView$3;)Lcom/vkontakte/android/NotificationsView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/NotificationsView$3$1;->val$pos:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/NotificationsView;->access$7(Lcom/vkontakte/android/NotificationsView;I)V

    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/NotificationsView$3$1;->this$1:Lcom/vkontakte/android/NotificationsView$3;

    invoke-static {v0}, Lcom/vkontakte/android/NotificationsView$3;->access$0(Lcom/vkontakte/android/NotificationsView$3;)Lcom/vkontakte/android/NotificationsView;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/NotificationsView$3$1;->val$pos:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/NotificationsView;->access$8(Lcom/vkontakte/android/NotificationsView;ILjava/lang/String;)V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
