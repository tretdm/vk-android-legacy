    .class Lcom/vkontakte/android/SettingsNetworkActivity$1;
.super Ljava/lang/Object;
.source "SettingsNetworkActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/SettingsNetworkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/SettingsNetworkActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/SettingsNetworkActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/SettingsNetworkActivity$1;->this$0:Lcom/vkontakte/android/SettingsNetworkActivity;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SettingsNetworkActivity$1;)Lcom/vkontakte/android/SettingsNetworkActivity;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vkontakte/android/SettingsNetworkActivity$1;->this$0:Lcom/vkontakte/android/SettingsNetworkActivity;

    return-object v0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/vkontakte/android/SettingsNetworkActivity$1;->this$0:Lcom/vkontakte/android/SettingsNetworkActivity;
    
    .line 57
    .local v1, "activity":Lcom/vkontakte/android/SettingsNetworkActivity;
    invoke-virtual {v1}, Lcom/vkontakte/android/SettingsNetworkActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
    move-result-object v2
    
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    move-result-object v10
    
    .line 58
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03009d
    const v4, 0x0
    
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    
    move-result-object v2
    
    .line 60
    .end local v3
    .end local v4
    .end local v5
    const v3, 0x7f09022a
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v4
    check-cast v4, Landroid/widget/Spinner;
    
    .line 61
    const v3, 0x7f090227
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v5
    check-cast v5, Landroid/widget/EditText;
    
    .line 62
    const v3, 0x7f090228
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    move-result-object v6
    check-cast v6, Landroid/widget/EditText;
    
    .line 65
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    
    .line 66
    const v3, 0x7f08037b
    
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;
    
    .line 67
    .local v2, "proxySettingsView":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
    
    .line 68
    .local v4, "proxyTypeSpinner":Landroid/widget/Spinner;
    .local v5, "proxyAddressEdit":Landroid/widget/EditText;
    .local v6, "proxyPortEdit":Landroid/widget/EditText;
    const v3, 0x7f080042
    new-instance v7, Lcom/vkontakte/android/SettingsNetworkActivity$1$1;
    
    invoke-direct {v7, p0, v4, v5, v6}, Lcom/vkontakte/android/SettingsNetworkActivity$1$1;-><init>(Lcom/vkontakte/android/SettingsNetworkActivity$1;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;)V
    
    invoke-virtual {v0, v3, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    
    .line 72
    const v3, 0x7f080041
    const v8, 0x0
    
    invoke-virtual {v0, v3, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    
        
    .line 90
    const v3, 0x7f0d0070
    const v8, 0x1090008
    
    invoke-static {v1, v3, v8}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    move-result-object v9
    
    .line 92
    .local v4, "proxyTypeSpinner":Landroid/widget/Spinner;
    .local v9, "adapter":Landroid/widget/ArrayAdapter;
    const v3, 0x1090009
    
    invoke-virtual {v9, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V
    
    .line 93
    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    
    .line 95
    .end local v3
    .end local v9
    .end local v8
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "proxyType"
    const-string v8, "http"
    invoke-interface {v10, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    
    if-nez v3, :cond_proxy_is_https
    
    const/4 v3, 0x1
    
    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setSelection(I)V
    
    :cond_proxy_is_https
    
    .line 96
    .end local v3
    .end local v7
    .end local v8
    .end local v9
    
    const-string v7, "proxyAddress"
    const-string v8, ""
    invoke-interface {v10, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    
    const-string v8, ":"
    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v9
    
    array-length v12, v9
    const/16 v7, 0x2
    if-lt v12, v7, :cond_arrsize_2_else
    
    .line 97
    .end local v3
    .end local v7
    .end local v8
    
    const/4 v3, 0x0
    aget-object v7, v9, v3
    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    
    const/4 v3, 0x1
    aget-object v7, v9, v3
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    

    :cond_arrsize_2_else
    
    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    
    const/4 v9, 0x1
    return v9
.end method
