.class Lcom/vkontakte/android/SettingsActivity$13;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsActivity;->showDndDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SettingsActivity$13;->this$0:Lcom/vkontakte/android/SettingsActivity;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 196
    .local v0, "t":J
    packed-switch p2, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 198
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/SettingsActivity$13;->this$0:Lcom/vkontakte/android/SettingsActivity;

    const-wide/32 v3, 0x1b7740

    add-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/SettingsActivity;->access$6(Lcom/vkontakte/android/SettingsActivity;J)V

    goto :goto_0

    .line 201
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/SettingsActivity$13;->this$0:Lcom/vkontakte/android/SettingsActivity;

    const-wide/32 v3, 0x36ee80

    add-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/SettingsActivity;->access$6(Lcom/vkontakte/android/SettingsActivity;J)V

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v2, p0, Lcom/vkontakte/android/SettingsActivity$13;->this$0:Lcom/vkontakte/android/SettingsActivity;

    const-wide/32 v3, 0x6ddd00

    add-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/SettingsActivity;->access$6(Lcom/vkontakte/android/SettingsActivity;J)V

    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v2, p0, Lcom/vkontakte/android/SettingsActivity$13;->this$0:Lcom/vkontakte/android/SettingsActivity;

    const-wide/32 v3, 0x1b77400

    add-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/SettingsActivity;->access$6(Lcom/vkontakte/android/SettingsActivity;J)V

    goto :goto_0

    .line 210
    :pswitch_4
    iget-object v2, p0, Lcom/vkontakte/android/SettingsActivity$13;->this$0:Lcom/vkontakte/android/SettingsActivity;

    invoke-static {v2}, Lcom/vkontakte/android/SettingsActivity;->access$7(Lcom/vkontakte/android/SettingsActivity;)V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
