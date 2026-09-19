.class Lcom/vkontakte/android/SettingsNetworkActivity$1$1;
.super Ljava/lang/Object;
.source "SettingsNetworkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$1:Lcom/vkontakte/android/SettingsNetworkActivity$1;

.field private final synthetic val$proxyTypeSpinner:Landroid/widget/Spinner;
.field private final synthetic val$proxyAddressEdit:Landroid/widget/EditText;
.field private final synthetic val$proxyPortEdit:Landroid/widget/EditText;

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsNetworkActivity$1;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SettingsNetworkActivity$1$1;->this$1:Lcom/vkontakte/android/SettingsNetworkActivity$1;
    iput-object p2, p0, Lcom/vkontakte/android/SettingsNetworkActivity$1$1;->val$proxyTypeSpinner:Landroid/widget/Spinner;
    iput-object p3, p0, Lcom/vkontakte/android/SettingsNetworkActivity$1$1;->val$proxyAddressEdit:Landroid/widget/EditText;
    iput-object p4, p0, Lcom/vkontakte/android/SettingsNetworkActivity$1$1;->val$proxyPortEdit:Landroid/widget/EditText;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 14
    .param p1, "dlgInterface"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vkontakte/android/SettingsNetworkActivity$1$1;->this$1:Lcom/vkontakte/android/SettingsNetworkActivity$1;
    iget-object v0, v0, Lcom/vkontakte/android/SettingsNetworkActivity$1;->this$0:Lcom/vkontakte/android/SettingsNetworkActivity;
    iget-object v1, p0, Lcom/vkontakte/android/SettingsNetworkActivity$1$1;->val$proxyTypeSpinner:Landroid/widget/Spinner;
    iget-object v2, p0, Lcom/vkontakte/android/SettingsNetworkActivity$1$1;->val$proxyAddressEdit:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/vkontakte/android/SettingsNetworkActivity$1$1;->val$proxyPortEdit:Landroid/widget/EditText;
    
    .line 61
    .local v0, "activity":Lcom/vkontakte/android/SettingsNetworkActivity;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v4
    
    .line 75
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v4
    
    .line 76
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    .local v1, "proxyTypeSpinner":Landroid/widget/Spinner;
    const-string v5, "proxyType"
    
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I
    move-result v7
    
    const/16 v8, 0x0
    
    if-eq v7, v8, :cond_item_pos_else
    
    const-string v10, "https"
    
    goto :cond_item_pos_end
    
    :cond_item_pos_else
    
    const-string v10, "http"
    
    :cond_item_pos_end
    
    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4
    
    .line 77
    const-string v5, "proxyAddress"
    
    const/16 v7, 0x3
    new-array v11, v7, [Ljava/lang/Object;
    
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v10
    
    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;
    move-result-object v10
    
    invoke-virtual {v10}, Ljava/lang/String;->length()I
    move-result v12
    
    const/16 v7, 0x0
    aput-object v10, v11, v7
    
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    move-result-object v10
    
    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;
    move-result-object v10
    
    invoke-virtual {v10}, Ljava/lang/String;->length()I
    move-result v13
    
    const/16 v7, 0x1
    aput-object v10, v11, v7
    
    const-string v6, "%s:%s"
    
    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v6
    
    const/16 v7, 0x0
    
    if-eq v12, v7, :cond_address_is_not_empty
    
    if-eq v13, v7, :cond_address_is_not_empty
    
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4
    
    :cond_address_is_not_empty
    
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    
    .line 90
    return-void
.end method
