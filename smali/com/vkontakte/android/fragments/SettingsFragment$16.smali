.class Lcom/vkontakte/android/fragments/SettingsFragment$16;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SettingsFragment;->showDndDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SettingsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SettingsFragment$16;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 234
    .local v0, "t":J
    packed-switch p2, :pswitch_data_0

    .line 251
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SettingsFragment$16;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    const-wide/32 v3, 0x1b7740

    add-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$6(Lcom/vkontakte/android/fragments/SettingsFragment;J)V

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SettingsFragment$16;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    const-wide/32 v3, 0x36ee80

    add-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$6(Lcom/vkontakte/android/fragments/SettingsFragment;J)V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SettingsFragment$16;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    const-wide/32 v3, 0x6ddd00

    add-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$6(Lcom/vkontakte/android/fragments/SettingsFragment;J)V

    goto :goto_0

    .line 245
    :pswitch_3
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SettingsFragment$16;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    const-wide/32 v3, 0x1b77400

    add-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$6(Lcom/vkontakte/android/fragments/SettingsFragment;J)V

    goto :goto_0

    .line 248
    :pswitch_4
    iget-object v2, p0, Lcom/vkontakte/android/fragments/SettingsFragment$16;->this$0:Lcom/vkontakte/android/fragments/SettingsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/SettingsFragment;->access$7(Lcom/vkontakte/android/fragments/SettingsFragment;)V

    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
