.class Lcom/vkontakte/android/ui/WriteBar$6$1;
.super Ljava/lang/Object;
.source "WriteBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/WriteBar$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ui/WriteBar$6;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/WriteBar$6;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/vkontakte/android/ui/WriteBar$6$1;->this$1:Lcom/vkontakte/android/ui/WriteBar$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 277
    packed-switch p2, :pswitch_data_0

    .line 292
    :goto_0
    return-void

    .line 279
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.sizeLimit"

    const-wide v2, 0x80000000L

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 281
    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar$6$1;->this$1:Lcom/vkontakte/android/ui/WriteBar$6;

    iget-object v1, v1, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v1}, Lcom/vkontakte/android/ui/WriteBar;->access$600(Lcom/vkontakte/android/ui/WriteBar;)Landroid/app/Fragment;

    move-result-object v1

    const/16 v2, 0x2717

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 284
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar$6$1;->this$1:Lcom/vkontakte/android/ui/WriteBar$6;

    iget-object v1, v1, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v1}, Lcom/vkontakte/android/ui/WriteBar;->access$600(Lcom/vkontakte/android/ui/WriteBar;)Landroid/app/Fragment;

    move-result-object v1

    const/16 v2, 0x2716

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 289
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/ui/WriteBar$6$1;->this$1:Lcom/vkontakte/android/ui/WriteBar$6;

    iget-object v1, v1, Lcom/vkontakte/android/ui/WriteBar$6;->this$0:Lcom/vkontakte/android/ui/WriteBar;

    invoke-static {v1}, Lcom/vkontakte/android/ui/WriteBar;->access$700(Lcom/vkontakte/android/ui/WriteBar;)V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
