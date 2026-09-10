.class public Lcom/vkontakte/android/SettingsNetworkActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsNetworkActivity.java"


# instance fields
.field impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

.field private initialCacheLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/SettingsNetworkActivity;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 137
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x7

    const/4 v8, -0x2

    const v11, 0x7f060182

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 33
    new-instance v5, Lcom/vkontakte/android/CustomTitleActivityImpl;

    const v6, 0x7f030054

    invoke-direct {v5, p0, v6, v10}, Lcom/vkontakte/android/CustomTitleActivityImpl;-><init>(Landroid/app/Activity;IZ)V

    iput-object v5, p0, Lcom/vkontakte/android/SettingsNetworkActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    .line 34
    iget-object v5, p0, Lcom/vkontakte/android/SettingsNetworkActivity;->impl:Lcom/vkontakte/android/CustomTitleActivityImpl;

    invoke-virtual {v5}, Lcom/vkontakte/android/CustomTitleActivityImpl;->onCreate()V

    .line 38
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/SettingsNetworkActivity;->requestWindowFeature(I)Z

    .line 40
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xb

    if-ge v5, v6, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/vkontakte/android/SettingsNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f030054

    invoke-virtual {v5, v9, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 129
    :cond_1
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/SettingsNetworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 130
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/SettingsNetworkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f090215

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 132
    :cond_2
    invoke-virtual {p0, v11}, Lcom/vkontakte/android/SettingsAdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/vkontakte/android/Global;->setFontOnAll(Landroid/view/View;)V

    .line 136
    const v5, 0x7f050009

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/SettingsNetworkActivity;->addPreferencesFromResource(I)V

    .line 142
    return-void
.end method
